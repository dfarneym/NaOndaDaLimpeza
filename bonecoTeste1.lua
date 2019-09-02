--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:b8bf13f237b5b365a1d645da6783679d:4e9a826e63ce9d078b7e0d4adf56aae7:f8b5cf20c00bbd51dfba4483b5613e16$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- Idle (1)
            x=1,
            y=1,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (1)
            x=1,
            y=121,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (2)
            x=1,
            y=481,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (3)
            x=1,
            y=601,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 4,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (4)
            x=1,
            y=721,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (5)
            x=1,
            y=1319,
            width=84,
            height=116,

            sourceX = 1,
            sourceY = 5,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (6)
            x=1,
            y=1437,
            width=84,
            height=116,

            sourceX = 1,
            sourceY = 5,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (7)
            x=1,
            y=841,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (8)
            x=1,
            y=961,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (9)
            x=1,
            y=1081,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (10)
            x=1,
            y=241,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (11)
            x=1,
            y=361,
            width=84,
            height=118,

            sourceX = 1,
            sourceY = 3,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Walk (12)
            x=1,
            y=1201,
            width=84,
            height=116,

            sourceX = 0,
            sourceY = 4,
            sourceWidth = 172,
            sourceHeight = 134
        },
    },

    sheetContentWidth = 86,
    sheetContentHeight = 1554
}

SheetInfo.frameIndex =
{

    ["Idle (1)"] = 1,
    ["Walk (1)"] = 2,
    ["Walk (2)"] = 3,
    ["Walk (3)"] = 4,
    ["Walk (4)"] = 5,
    ["Walk (5)"] = 6,
    ["Walk (6)"] = 7,
    ["Walk (7)"] = 8,
    ["Walk (8)"] = 9,
    ["Walk (9)"] = 10,
    ["Walk (10)"] = 11,
    ["Walk (11)"] = 12,
    ["Walk (12)"] = 13,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
