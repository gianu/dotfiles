hs.hotkey.bind({ "Ctrl" }, "-", function()
	local alacritty = hs.application.find("Ghostty")
	if alacritty:isFrontmost() then
		alacritty:hide()
	else
		hs.application.launchOrFocus("/Applications/Ghostty.app")
	end
end)
