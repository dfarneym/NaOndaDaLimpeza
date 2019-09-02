--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:7799358dc4521ae30259f2204ba9be4d:32c1bf8804cf160aba926196d433aee7:8297d11c7472fdba84cb1073f3e33fd2$
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
            -- Jump (1)
            x=1,
            y=1419,
            width=82,
            height=120,

            sourceX = 6,
            sourceY = 1,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (2)
            x=1,
            y=1541,
            width=80,
            height=114,

            sourceX = 16,
            sourceY = 6,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (3)
            x=1,
            y=1305,
            width=84,
            height=112,

            sourceX = 20,
            sourceY = 9,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (4)
            x=1,
            y=1073,
            width=84,
            height=114,

            sourceX = 21,
            sourceY = 8,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (5)
            x=1,
            y=1189,
            width=84,
            height=114,

            sourceX = 16,
            sourceY = 2,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (6)
            x=1,
            y=737,
            width=94,
            height=104,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (7)
            x=1,
            y=315,
            width=96,
            height=104,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (8)
            x=1,
            y=211,
            width=98,
            height=102,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (9)
            x=1,
            y=1,
            width=98,
            height=104,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (10)
            x=1,
            y=107,
            width=98,
            height=102,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (11)
            x=1,
            y=421,
            width=96,
            height=102,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (12)
            x=1,
            y=525,
            width=94,
            height=104,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (13)
            x=1,
            y=843,
            width=92,
            height=112,

            sourceX = 8,
            sourceY = 4,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (14)
            x=1,
            y=631,
            width=94,
            height=104,

            sourceX = 12,
            sourceY = 9,
            sourceWidth = 174,
            sourceHeight = 134
        },
        {
            -- Jump (15)
            x=1,
            y=957,
            width=86,
            height=114,

            sourceX = 14,
            sourceY = 5,
            sourceWidth = 174,
            sourceHeight = 134
        },
    },

    sheetContentWidth = 100,
    sheetContentHeight = 1656
}

SheetInfo.frameIndex =
{

    ["Jump (1)"] = 1,
    ["Jump (2)"] = 2,
    ["Jump (3)"] = 3,
    ["Jump (4)"] = 4,
    ["Jump (5)"] = 5,
    ["Jump (6)"] = 6,
    ["Jump (7)"] = 7,
    ["Jump (8)"] = 8,
    ["Jump (9)"] = 9,
    ["Jump (10)"] = 10,
    ["Jump (11)"] = 11,
    ["Jump (12)"] = 12,
    ["Jump (13)"] = 13,
    ["Jump (14)"] = 14,
    ["Jump (15)"] = 15,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
