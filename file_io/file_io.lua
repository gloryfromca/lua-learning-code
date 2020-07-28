--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/28
-- Time: 下午5:01
-- To change this template use File | Settings | File Templates.
--

-- implicit file descriptors --

file = io.open("file_io.lua", "r+")
io.input(file)
print(io.read() == "--")
io.close(file)

file = io.open("test.txt", "w+")
io.output(file)
io.write("----")
io.close()

-- explicit file descriptors --

file = io.open("test.txt", "a")
file:write("----")
file:close()

file = io.open("test.txt", "r")
file:seek("end", -3)
print(file:read("*a") == "---")
file:close()
