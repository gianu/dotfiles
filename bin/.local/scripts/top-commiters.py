#!/usr/bin/env python3

import subprocess
import sys
from collections import defaultdict


# Association dictionary - add your mappings here
COMMITTER_ASSOCIATIONS = {
    # Example mappings - replace with your actual associations
    "Rafael": "Rafael Chiti",
    "Dominick Bellizzi": "Dom Bellizzi",
    "J. Pichardo": "Jonathan Pichardo",
    "MikeFernandez-Pro": "Mike Fernandez",
    "Leonardo Andres Garcia Crespo": "Leonardo Garcia Crespo",
    "paltasosa": "Mariano Sosa",
    # Add more associations as needed
    # "alias": "Canonical Name",
}


def get_canonical_name(committer_name):
    """
    Get the canonical name for a committer, or return original if no mapping exists.
    """
    return COMMITTER_ASSOCIATIONS.get(committer_name, committer_name)


def get_git_committers():
    """
    Get all committer names from git log.
    """
    try:
        result = subprocess.run(
            ["git", "log", "--format=%aN"], capture_output=True, text=True, check=True
        )
        return result.stdout.strip().split("\n")
    except subprocess.CalledProcessError as e:
        print(f"Error running git command: {e}", file=sys.stderr)
        sys.exit(1)
    except FileNotFoundError:
        print(
            "Error: git command not found. Make sure git is installed and in your PATH.",
            file=sys.stderr,
        )
        sys.exit(1)


def main():
    # Check if we're in a git repository
    try:
        subprocess.run(
            ["git", "rev-parse", "--git-dir"], capture_output=True, check=True
        )
    except subprocess.CalledProcessError:
        print("Error: Not in a git repository", file=sys.stderr)
        sys.exit(1)

    print("Getting committers from git log...")

    # Get all committer names
    committers = get_git_committers()

    if not committers or committers == [""]:
        print("No commits found in this repository.", file=sys.stderr)
        sys.exit(1)

    # Count commits by canonical name
    commit_counts = defaultdict(int)

    for committer in committers:
        canonical_name = get_canonical_name(committer)
        commit_counts[canonical_name] += 1

    # Sort by commit count (descending) and get top 10
    sorted_committers = sorted(commit_counts.items(), key=lambda x: x[1], reverse=True)
    top_committers = (
        sorted_committers  # If you want to get the top ten ->  sorted_committers[:10]
    )

    # Display results
    print("\nTop 10 committers (after name aggregation):")
    print("=" * 45)

    for i, (name, count) in enumerate(top_committers, 1):
        print(f"{count:3d} commits - {name}")

    # Show total stats
    total_commits = sum(commit_counts.values())
    total_contributors = len(commit_counts)

    print(f"\nTotal commits: {total_commits}")
    print(f"Total contributors: {total_contributors}")

    # Show if any mappings were applied
    mapped_names = set()
    for committer in committers:
        if committer in COMMITTER_ASSOCIATIONS:
            mapped_names.add(f"{committer} -> {COMMITTER_ASSOCIATIONS[committer]}")

    # if mapped_names:
    #     print(f"\nApplied {len(mapped_names)} name mappings:")
    #     for mapping in sorted(mapped_names):
    #         print(f"  {mapping}")


if __name__ == "__main__":
    main()
