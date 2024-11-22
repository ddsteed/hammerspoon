-- define windows size and position
local hyper = {'ctrl', 'alt', 'cmd'}
local typer = {'ctrl', 'alt', 'shift'}
local fyper = {'alt', 'shift'}

local function baseMove(x, y, w, h)
    return function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()
        f.x = max.w * x + max.x
        f.y = max.h * y
        f.w = max.w * w
        f.h = max.h * h
        win:setFrame(f, 0)
    end
end

hs.hotkey.bind(hyper, 'Left',  baseMove(0, 0, 0.5, 1))
hs.hotkey.bind(hyper, 'Right', baseMove(0.5, 0, 0.5, 1))
hs.hotkey.bind(hyper, 'Down',  baseMove(0, 0.5, 1, 0.5))
hs.hotkey.bind(hyper, 'Up',    baseMove(0, 0, 1, 0.5))

hs.hotkey.bind(hyper, 'c', baseMove(0.2, 0, 0.6, 1))
hs.hotkey.bind(hyper, 'm', hs.grid.maximizeWindow)
hs.hotkey.bind(fyper, 'm', hs.grid.maximizeWindow)

hs.hotkey.bind(typer, 'Left',  baseMove(0, 0, 0.5, 0.5))
hs.hotkey.bind(typer, 'Up',    baseMove(0.5, 0, 0.5, 0.5))
hs.hotkey.bind(typer, 'Down',  baseMove(0, 0.5, 0.5, 0.54))
hs.hotkey.bind(typer, 'Right', baseMove(0.5, 0.5, 0.5, 0.54))

hs.hotkey.bind(typer, 'c', baseMove(0, 0.3, 0.5, 0.5))
hs.hotkey.bind(typer, 'm', baseMove(0.5, 0.3, 0.5, 0.5))
