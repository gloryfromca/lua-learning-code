--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/29
-- Time: 下午3:50
-- To change this template use File | Settings | File Templates.
--

local Counters = {};
local Names = {};

local function hook ()
    local f = debug.getinfo(2, "f").func;
    if (Counters[f] == nil) then
        Counters[f] = 1;
        Names[f] = debug.getinfo(2, "Sn");
    else
        Counters[f] = Counters[f] + 1;
    end
end

local function getname(func)
    local n = Names[func];
    if n.what == "C" then
        return n.name or "no name"
    end
    local loc = string.format("[%s]: %s", n.short_src, n.linedefined);
    if n.name ~= "" then
        return string.format("%s (%s)", loc, n.name);
    else
        return string.format("%s", loc);
    end
end

local function show_call_info()
    print("Call Counters:")
    for func, count in pairs(Counters) do
        print(getname(func) .. " --> " .. count)
    end
end

-- command:
-- lua profiler.lua local_variables_upvalues_env.lua
local f = assert(loadfile(arg[1]));
debug.sethook(hook, "c");
f();
debug.sethook();

show_call_info();
