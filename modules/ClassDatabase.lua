local Module = {}
local Database = {}

function Module:set(name, class)
    Database[name] = class
end

function Module:get(name)
    return Database[name]
end

return Module