--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/29
-- Time: 下午2:30
-- To change this template use File | Settings | File Templates.
--

-- local variables --

function foo()
    local name, value = debug.getlocal(2, 1);
    print(name == "n");
    print(value == 1);
    debug.setlocal(2, 1, 10);
end

function bar()
    local n = 1;
    foo();
    return n;
end

print(bar() == 10);


-- upvalues --

function a()
    local r  = 1;
    return function()
        return r + 1;
    end
end

a1 = a();
local name, value = debug.getupvalue(a1, 1);
print(name == "r");
print(value == 1);
print(a1() == 2);

debug.setupvalue(a1, 1, 10);
print(a1() == 11);


-- getfenv & setfenv were removed.
-- s = 1;
-- print(getfenv(a).s == 1);

-- local new_gt = {};
-- setmetatable(new_gt, {__index = _G});
-- setfenv(1, new_gt);
-- print(s == 1);

x = 1;
print(_G.x == 1);