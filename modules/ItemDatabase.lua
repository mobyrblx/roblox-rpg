local Module = {}
local Database = {}

Database.armor = {}
Database.weapon = {}
Database.boosts = {}

function Module:get(name, type, subType)
    return Database[type][subType][name] or Database
end

return Modules