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

-- Define slash commands
SLASH_MPSS1 = "/mpss"
SLASH_MPSS2 = "/superstar"

-- Define slash command handler
SlashCmdList.MPSS = function()
    print(mpss_messages[math.random(10)])
end

-- IDEA:
-- Run slash command, pulls message from a pool of messages randomly, prints message to terminal
-- /mpss ?      
-- TO DO: Lots, maybe a countdown? play music? big spin wheel with complete interface?

