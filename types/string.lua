--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/20
-- Time: 上午10:49
-- To change this template use File | Settings | File Templates.
--

-- string --
string1 = "a"
string2 = 'b'
string3 = [===[a ]] b]===]
print(string3 == "a ]] b")

-- string manipulation --
print(string.upper("a") == "A")
print(string.gsub("aaa", "a", "b", 2) == "bba")
print(string.find("banana", "na", 1) == 3)
print(string.format("name: %s", "zh") == "name: zh")
print(string.char(97, 98, 99, 100) == "abcd")
print(string.byte("abcd") == 97)
print(string.sub("apple", 1, 2) == "ap")
s = "now is 2012/12/12"
print(string.sub(s, string.find(s, "%d%d%d%d/%d%d/%d%d")) == "2012/12/12")
