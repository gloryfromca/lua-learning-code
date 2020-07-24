--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/22
-- Time: 上午11:16
-- To change this template use File | Settings | File Templates.
--

mytable = setmetatable({}, {})


mytable1 = setmetatable({key1="value1"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return mytable[key]
        end
    end
})
print(mytable1.key1 == "value1", mytable1.key2 == "metatablevalue")


mytable2 = setmetatable({key1="value1"}, {
    __index = {key2="metatablevalue"}
})
print(mytable2.key1 == "value1", mytable2.key2 == "metatablevalue")


mytable3 = setmetatable({key1="value1"}, {
    __newindex = function (mytable, key, value)
        rawset(mytable, key, "\"" .. value .. "\"")
    end
})
mytable3.key1 = "value2"
mytable3.key2 = "value3"
print(mytable3.key1 == "value2", mytable3.key2 == '"value3"')


mytable4 = setmetatable({1, 2, 3}, {
    __add = function(mytable, newtable)
        for i, v in ipairs(newtable) do
            table.insert(mytable, #mytable + 1, v)
        end
        return mytable4;
    end
})
mytable4 = mytable4 + {4, 5, 6}
print(mytable4[3] == 3, mytable4[4] == 4)


mytable5 = setmetatable({10}, {
    __call = function(table1, table2)
        local sum = 0
        for i, v in ipairs(table1) do
            sum = sum + v
        end
        for i, v in ipairs(table2) do
            sum = sum + v
        end
        return sum
    end
})
print(mytable5({1, 2, 3, 4, 5}) == 25)


mytable6 = setmetatable({10, 12}, {
    __tostring = function(table1)
        local st = ""
        for i, v in ipairs(table1) do
            if (i == 1) then
                st = v
            else
                st = st .. ", " .. v
            end
        end
        return st
    end
})
print(mytable6)
