-- Autostart
-- Single responsibility: launch processes on hyprland.start

-- See https://wiki.hypr.land/configuring/core/autostart/

-- Uncomment and edit as needed
-- local programs = require("modules.programs")

-- hl.on("hyprland.start", function ()
--     hl.exec_cmd(programs.terminal)
--     hl.exec_cmd("nm-applet")
--     hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP HYPRLAND_INSTANCE_SIGNATURE")
end)

hl.on("hyprland.start", function ()
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
