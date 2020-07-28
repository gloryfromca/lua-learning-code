--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/28
-- Time: 上午11:08
-- To change this template use File | Settings | File Templates.
--

-- ref: http://lua-users.org/wiki/ObjectOrientationTutorial

-- tbl:name(arg) is a shortcut for tbl.name(tbl, arg), except tbl is evaluated only once

-- function MyClass:set_value(newval)
-- the : syntax here causes a "self" arg to be implicitly added before any other args

-- metatable-based class --
local Shape = {name = "Shape"}
Shape.__index = Shape

function Shape:showName()
    return "Name is : " .. self.name;
end

function Shape:init(name)
    self.name = name;
end

setmetatable(Shape, {
    __call = function(cls, name)
        local o = setmetatable({}, cls);
        o:init(name);
        return o;
    end
})

s1 = Shape("Oct");
print(s1:showName() == "Name is : Oct")

s2 = Shape();
print(s2:showName() == "Name is : Shape")


-- inheritance --
local Rectangle = {length=0, width=0}
Rectangle.__index = Rectangle

function Rectangle:init(name, length, width)
    Shape.init(self, name);
    self.length = length;
    self.width = width;
end

function Rectangle:area()
    return self.length * self.width;
end

setmetatable(Rectangle, {
    __index = Shape,
    __call = function(cls, name, length, width)
        local o = setmetatable({}, cls);
        o:init(name, length, width);
        return o
    end
})

s3 = Rectangle("Act", 2, 3);
print(s3:showName() == "Name is : Act");
print(s3:area() == 6);

s4 = Rectangle();
print(s4:showName() == "Name is : Shape");
print(s4:area() == 0);
