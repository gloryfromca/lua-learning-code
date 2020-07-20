--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/17
-- Time: 下午4:22
-- To change this template use File | Settings | File Templates.
--

-- function --
function max(a1, a2, comparator)
    if (comparator(a1, a2) > 0) then
        return a1
    else
        return a2
    end
end

function numComparator(a1, a2)
    if (a1 > a2) then
        return 1
    elseif (a1 == a2) then
        return 0
    else
        return -1
    end
end

print(max(1, 2, numComparator) == 2)

-- multi return value --
f, e = string.find("zhanghui", "zh")
print(f == 1)
print(e == 2)

-- variable parameter --
function addAll(name, ...)
    local length = select("#", ...)
    local last = select(length, ...)
    local args = {...}
    print(#args == length)
    local sum = 0
    for i, v in ipairs{...} do
        sum = sum + v
    end
    return name, length, last, sum
end
name, length, last, sum = addAll("info", 1, 2, 3, 4)

print(name == "info")
print(length == 4)
print(last == 4)
print(sum == 10)
