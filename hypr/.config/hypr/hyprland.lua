-- Hyprland modular entry point
-- Safe requires: one broken module does not kill the rest
-- Place this as ~/.config/hypr/hyprland.lua
-- Modules live in ~/.config/hypr/modules/

local function safe_require(mod)
    local ok, err = pcall(require, mod)
    if not ok then
        print("Failed to load " .. mod .. ": " .. tostring(err))
    end
    return ok
end

-- Load order is mostly organizational (Hyprland merges hl.config calls)
safe_require("modules.programs")      -- returns table, used by keybinds
safe_require("modules.env")
safe_require("modules.monitors")
safe_require("modules.permissions")
safe_require("modules.appearance")
safe_require("modules.animations")
safe_require("modules.input")
safe_require("modules.autostart")
safe_require("modules.keybinds")
safe_require("modules.rules")

