print("Welcome to Mythic Plus Party! (TM)")

-- Define MPSS conditions
mpss_messages = { "Whoever had the most interrupts!",
                    "Whoever died the most times!",
                    "Whoever finished first in overall damage!",
                    "Whoever finished second in overall damage!",
                    "Whoever finished third in overall damage!",
                    "Whoever finished fourth in overall damage!",
                    "Whoever finished last in overall damage!",
                    "Whoever took the most damage!",
                    "Whoever took the second most damage!",
                    "Whoever took the third most damage!",
                    "Whoever took the fourth most damage!",
                    "Whoever took the least damage!",
                    "Players that received gear from the dungeon!",
                    "Players that didn't get any gear from the dungeon!",
                    "Whoever is the drippiest!",
                    "Whoever had the sickest gamer moment!",
                    "Whoever's covenant was able to aid you in the dungeon!",
                    "Anyone who didn't die during the run!",
                    "Anyone who died during the run!",
                    "Whoever's character is the shortest!",
                    "Whoever's character is the tallest!",
                    "Anyone whose character uses a shield!",
                    "Anyone who summoned a pet or minion during the dungeon!",
                    "Anyone whose character has hooves!",
                    "Whoever used their key for the dungeon run!",
                    "Whoever has footwear!",
                    "Whoever has their helmet showing!",
                    "Whoever has their helmet hidden!",
                    "It's Smoof. Smoof is the big winner.",
                    "It's Chuddar. Chuddar is the big winner.",
                    "It's Celasong. Celasong is the big winner.",
                    "It's Euriana. Euriana is the big winner.",
                    "It's Dinaa. Dinaa is the big winner.",
                    "Anyone who has their cloak showing!",
                    "Anyone who has their cloak hidden!",
                    "Anyone who has their 4-piece set bonus!",
                    "Anyone who doesn't have their 4-piece set bonus!",
                    "Anyone who is currently in Ohio!",
                    "Anyone who is currently in New York!",
                    "Anyone who is currently a tank!",
                    "Anyone who is currently a DPS spec!",
                    "Anyone who is currently a healer!",
                    "Anyone who has brown eyes!",
                    "Anyone who has blue eyes!",
                    "Anyone who has green eyes!",
                    "Anyone who has black or brown hair!",
                    "Anyone who has blonde hair!",
                    "Anyone who has red hair!",
                    "Anyone who has a first name that begins with the letter C!",
                    "Anyone who has a first name that begins with a letter other than C!",
                    "Anyone who likes pickles!",
                    "Anyone who thinks pickles are disgusting!",
                    "Anyone who played Tom Sawyer in a primary school skit!",
                    "Anyone who didn't play Tom Sawyer in a primary school skit!",
                    "Anyone with a doctorate degree!",
                    "Anyone without a doctorate degree!",
                    "Anyone who lives in an apartment!",
                    "Anyone who lives in a house!",
                    "Anyone who is homeless!",
                    "Anyone who has children!",
                    "Anyone who is childless!"
}

-- Slash command definitions
SLASH_MPSS1 = "/mpss"
SLASH_MPSS2 = "/superstar"
SLASH_MPSS3 = "/mps"

SLASH_DICE1 = "/dice"

SLASH_TEST1 = "/test1"

-- Slash command functions
SlashCmdList.MPSS = function()
    print(mpss_messages[math.random(60)])
end

SlashCmdList.MPSS = function()
    SendChatMessage(mpss_messages[math.random(60)],"party")
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

-- test ground -- make an options panel? maybe include it in a different file?

SlashCmdList.TEST = function()

    local f = CreateFrame("Frame")

    f.defaults = {
        someOption = true,
    }

end



