local function adjustItem(Name, Property, Value)
    local Item = ScriptManager.instance:getItem(Name)
    Item:DoParam(Property .. " = " .. Value)
end

local function initCustomConsumption()
    adjustItem("Base.Soap2", "UseDelta", 0.05 * 0.1)
end

Events.OnInitGlobalModData.Add(initCustomConsumption)
