function python3()
    local buf = CurView().Buf -- El buffer ("archivo") actual
    if buf:FileType() == "python" then
        HandleShellCommand("python3 " .. buf.Path, true, true)
        -- El primer true hace que no se ejecute en background
    end
end

BindKey("F5", "init.python3")
