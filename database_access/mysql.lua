--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/29
-- Time: 下午5:51
-- To change this template use File | Settings | File Templates.
--

mysql = require "luasql.mysql"

local env = mysql.mysql()
local conn = env:connect("employees","root","gllue123","127.0.0.1")
cursor, errorString = conn:execute([[ SELECT * FROM employees limit 2 ]])
print(errorString)

local row = cursor:fetch({}, "a")
while row do
    print(string.format("emp_no: %d, first_name: %s", row.emp_no, row.first_name))
    row = cursor:fetch({}, "a")
end

cursor:close()
conn:close()
env:close()
