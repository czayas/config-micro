local shell = import("micro/shell")
local config = import("micro/config")

function python3(bp)
    local buf = bp.Buf
    if buf:FileType() == "python" or buf:FileType() == "python3" then
        if buf:Modified() then
            bp:Save()
        end
        shell.RunInteractiveShell("python3 " .. buf.AbsPath, true, false)
    end
end

function init()
    config.TryBindKey("F5", "lua:initlua.python3", true)
end
