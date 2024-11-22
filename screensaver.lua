-- screensaver

local hyper = {'ctrl', 'alt', 'cmd'}

hs.hotkey.bind(hyper, 'L', function()
    hs.caffeinate.startScreensaver()
end)