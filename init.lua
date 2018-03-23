function python3()
    local buf = CurView().Buf -- El buffer ("archivo") actual
    if buf:FileType() == "python" then -- Tal vez deba ser "python3"
        if buf.IsModified then
            buf:Save() -- Guarda el archivo antes de ejecutarlo
        end
        HandleShellCommand("python3 " .. buf.AbsPath, true, true)
        -- El primer true hace que no se ejecute en background
    end
end

BindKey("F5", "init.python3")
