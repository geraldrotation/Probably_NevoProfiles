--Nevo = {}
if not Nevo then Nevo = {} end

function Nevo.GetSpellCD(MySpell)
    if GetSpellCooldown(GetSpellInfo(MySpell)) == nil then
        return 0
    else
        local Start ,CD = GetSpellCooldown(MySpell)
        local MyCD = Start + CD - GetTime()
        return MyCD
    end
end

function Nevo.Pooling()
    local _Pooling = 0
    if UnitDebuff("target", GetSpellInfo(91021)) then --Find weakness
        _Pooling = 0
    end   
    local EndTime = select(7,UnitDebuff("target", GetSpellInfo(91021))
    local Remaining = GetTime() - EndTime
	if Endtime <= 3 then --Find weakness --This the line i want to work
        _Pooling = 30
	end
    if Nevo.GetSpellCD(51713) < 5 then
        _Pooling = 40
    end
    return _Pooling
end

function Nevo.Ambush()
    if UnitPower("player") > (40 + Nevo.Pooling()) then
        return true
    end
end

function Nevo.BackStab()
    if UnitPower("player") >= (35 + Nevo.Pooling()) then
        return true
    end
end

function Nevo.Hemo()
    if UnitPower("player") > (30 + Nevo.Pooling()) then
        return true
    end
end



ProbablyEngine.library.register("Nevo", Nevo)


function Nevo.Pooling()
    local _Pooling = 0
    if UnitDebuff("target", GetSpellInfo(91021)) then --Find weakness
        _Pooling = 0
    end   
    local EndTime = select(7,UnitDebuff("target", GetSpellInfo(91021))
    local Remaining = GetTime() - EndTime
    if Entime <= 3 then --Find weakness --This the line i want to work
        _Pooling = 30
    end
    if Nevo.GetSpellCD(51713) < 5 then
        _Pooling = 40
    end
    return _Pooling
end


ProbablyEngine.condition.register("enerpool", function(value,target)
    local Energy = UnitPower("player",SPELL_POWER_ENERGY)
    local _Pooling = 0
    if UnitDebuff("target", GetSpellInfo(91021)) then --Find weakness
        _Pooling = 0
    end   
    local EndTime = select(7,UnitDebuff("target", GetSpellInfo(91021))
    local Remaining = GetTime() - EndTime
    if Entime <= 3 then --Find weakness --This the line i want to work
        _Pooling = 30
    end
    if Nevo.GetSpellCD(51713) < 5 then
        _Pooling = 40
    end
    return ((Energy + _Pooling) >= value)
end)