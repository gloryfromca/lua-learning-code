--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/20
-- Time: 下午2:18
-- To change this template use File | Settings | File Templates.
--

-- table manipulation --
a = {"apple", "banana", "water"}
print(table.concat(a, ", ", 1, 2) == "apple, banana")

b = {"apple", "water"}
table.insert(b, 2, "banana")
print(a[2] == b[2])

table.remove(b)
print(b[3] == nil)

c = {"banana", "apple"}
table.sort(c)
print(c[1] == "apple")
