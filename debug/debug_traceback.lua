--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/29
-- Time: 上午11:33
-- To change this template use File | Settings | File Templates.
--

function do_something()
    local n = 1;
    print(debug.traceback("Stack Trace"));

    local k = n + 1;
    print(debug.getinfo(1).name == "do_something");
    print(debug.getinfo(1).short_src == "debug_traceback.lua");
    print(debug.getinfo(1).linedefined == 9);
    print(debug.getinfo(1).what == "Lua");
    print(debug.getinfo(1).namewhat == "global");
    print(debug.getinfo(1).nups == 1);

    -- in debug.debug()
    -- 1 debug.getinfo(3) will get func `do_something`
    -- 2 use `print(info.short_src)` not `info.short_src`
    debug.debug();

    return k;
end

do_something();

