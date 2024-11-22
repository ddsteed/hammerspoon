-- 按Ctrl + Option + Command + R重新加载配置

local hyper = {'ctrl', 'alt', 'cmd'}

hs.hotkey.bind(hyper, "R", function()
    hs.reload()
    hs.notify.new({title="Hammerspoon config reloaded", informativeText="Manually via keyboard shortcut"}):send()
end)
