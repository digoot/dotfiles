local primaryScreen = hs.screen{x=0,y=0}
local secondaryScreenEast = hs.screen{x=1,y=0}
local secondaryScreenWest = hs.screen{x=-1,y=0}
local combo = {"cmd", "alt", "ctrl"}
local limit = 100
local sleepTime = 1000000

function initialize()

	-- Google Chrome
	hs.application.launchOrFocus("Google Chrome")
	-- Xccello
	hs.application.launchOrFocus("Xccello")
	-- NetBeans 8.1
	--hs.application.launchOrFocus("/Applications/NetBeans/NetBeans 8.1.app")
	-- Place windows in the screen
	place()

end

function place()
	
	local chrome = nil
	local chromeWindow = nil
	local xccello = nil
	local xccelloWindow = nil
	local keep = nil
	local keepWindow = nil

	chrome = waitAndFindApp("Google Chrome",1)
	xccello = waitAndFindApp("Xccello",1)

	chromeWindow = waitAndGetWindow(chrome)
	xccelloWindow = waitAndGetWindow(xccello)
	hs.application.launchOrFocus("/Users/diego/Applications/Chrome Apps.localized/Default hmjkmjkepdijhoojdojkdfohbdgmmhki.app")
	keep = waitAndFindApp("Google Keep *",2)
	keepWindow = waitAndGetWindow(keep)

	if (secondaryScreenEast ~= nil) then
		chromeWindow:moveOneScreenEast(false,true)
		keepWindow:moveOneScreenEast(false,true)
		xccelloWindow:moveOneScreenEast(false,true)
	elseif (secondaryScreenWest ~= nil) then
		chromeWindow:moveOneScreenWest(false,true)
		keepWindow:moveOneScreenWest(false,true)
		chromeWindow:moveOneScreenWest(false,true)
	end

	xccelloWindow:setFullScreen(true)
	hs.timer.doAfter(2,function() chromeWindow:focus() end)
	hs.alert.show("Work configuration loaded", 3)

end

function waitAndFindApp(name, dataType)
	local limitCounter = 0
	repeat
		if dataType == 1 then
			app = hs.appfinder.appFromName(name)
		elseif dataType == 2 then
			app = hs.appfinder.appFromWindowTitlePattern(name)
		end
		limitCounter = limitCounter + 1
		if limitCounter == limit then break end
		hs.timer.usleep(sleepTime)
	until (app ~= nil)
	return app
end

function waitAndGetWindow(app)
	local limitCounter = 0
	repeat
		appWindow = app:mainWindow()
		limitCounter = limitCounter + 1
		if limitCounter == limit then break end
		hs.timer.usleep(sleepTime)
	until (appWindow ~= nil)
	return appWindow
end

hs.hotkey.bind(combo, "F12", function()
	initialize()
end)