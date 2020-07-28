--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/28
-- Time: 下午5:51
-- To change this template use File | Settings | File Templates.
--

function right_func()
    return 1 + 1
end

function wrong_func()
    return 1 / nil
end

-- pcall --

status, result = pcall(right_func)
print(status)
print(result == 2)

status, result = pcall(wrong_func)
print(status == false)
print(result)

-- xpcall --

function error_handling(error)
    print("Error: " .. error)
    return 3
end

status, result = xpcall(right_func, error_handling)
print(status)
print(result == 2)

status, result = xpcall(wrong_func, error_handling)
print(status == false)
print(result == 3)
