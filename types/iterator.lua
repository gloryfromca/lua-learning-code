--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/20
-- Time: 上午11:43
-- To change this template use File | Settings | File Templates.
--

-- generic iterator --
a = {"apple", "banana"}
for index,  value in ipairs(a) do
    print(index, value)
end

-- stateless iterator --
function stateless_traversal(collection, index)
    index = index + 1
    if #collection < index then
        return nil, nil
    end
    return index, collection[index]
end

for index, value in stateless_traversal, a, 0 do
    print(index, value)
end

-- stateful iterator --
function stateful_traversal(collection)
    local collection_num = #collection
    local index = 0
    local _closure_func = function ()
        index = index + 1
        if collection_num < index then
            return nil
        end
        return index, collection[index]
    end
    return _closure_func
end

for index, value in stateful_traversal(a) do
    print(index, value)
end
