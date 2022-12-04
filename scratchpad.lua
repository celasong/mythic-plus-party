SlashCmdList.MPSS = function()
    print(mpss_messages[math.random(60)])
end

SLASH_MPSS1 = "/mpss"
SLASH_MPSS2 = "/superstar"




SlashCmdList.DICE = function()
    if enabled == true then -- Currently not working? Confirmed, print statement not firing.
        print("Enabled flag checked")
        f:Hide()
    end

    local btn = CreateFrame("Button",nil, UIParent, "UIPanelButtonTemplate")
    btn:SetPoint("CENTER",0,0)
    btn:SetText("Who is the M+ Super Star?")
    btn:SetWidth(200)
    btn:SetHeight(100)
    btn:SetScript("OnClick", function()
        local enabled = true -- Some kind of flag to hide old frames? not working as it currently TODO
        btn:Hide()
        mythicPlusStar()
    end)
end

function mythicPlusStar()
    local f = CreateFrame("Frame",nil,UIParent)
    f:SetFrameStrata("BACKGROUND")
    
    f.text = f:CreateFontString(nil,"ARTWORK")
    f.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
    f.text:SetPoint("CENTER",0,0)

    f.text:SetText(mpss_messages[math.random(10)])
    
    f:SetWidth(200)
    f:SetHeight(100)

    local t = f:CreateTexture(nil,"BACKGROUND")
    t:SetTexture("Interface\\Glues\\CharacterCreate\\Pandaren-Faction-BannerCover.blp")
    t:SetAllPoints(f)
    f.texture = t

    f:SetPoint("CENTER",0,150)
    f:Show()
end


SlashCmdList.TEST = function()

    local f = CreateFrame("Frame")

    f.defaults = {
        someOption = true,
    }

end


