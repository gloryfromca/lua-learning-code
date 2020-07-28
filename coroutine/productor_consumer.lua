--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/28
-- Time: 下午4:26
-- To change this template use File | Settings | File Templates.
--

function Productor(i)
    while true do
        i = coroutine.yield(i+1);
    end
end

function Consumer()
    local r;
    for i=0, 10, 1 do
        local status, r = coroutine.resume(productor, i);
        print(r == i + 1);
        print(status == true);
    end
end

productor = coroutine.create(Productor);
Consumer();
