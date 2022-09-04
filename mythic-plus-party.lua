print("Welcome to Mythic Plus Party! (TM)")

-- Define MPSS conditions
mpss_messages = { "Whoever used their key for the dungeon run",
                    "Whoever finished fifth in overall damage",
                    "Whoever finished fourth in overall damage",
                    "Whoever finished third in overall damage",
                    "Whoever finished second in overall damage",
                    "Whoever finished first in overall damage",
                    "Anyone who lives in a house!",
                    "Whoever took the least damage!",
                    "Whoever died the most!",
                    "Players that received gear from the dungeon!"
}

-- Slash command definitions
SLASH_MPSS1 = "/mpss"
SLASH_MPSS2 = "/superstar"

SLASH_DICE1 = "/dice"

-- Slash command functions
SlashCmdList.MPSS = function()
    print(mpss_messages[math.random(10)])

end

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

-- FUNCTIONS
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


-- IDEA:
-- Run slash command, pulls message from a pool of messages randomly, prints message to terminal
-- /mpss ?      
-- TO DO: Lots, maybe a countdown? play music? big spin wheel with complete interface?

