hs.hotkey.bind({ "Ctrl" }, "-", function()
	local alacritty = hs.application.find("Alacritty")
	if alacritty:isFrontmost() then
		alacritty:hide()
	else
		hs.application.launchOrFocus("/Applications/Alacritty.app")
	end
end)
