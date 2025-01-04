--[[
    Copyright (c) Dmitriy. All rights reserved.
    Licensed under the MIT license. See LICENSE file in the project root for details.
]]

local RUI = LibStub('AceAddon-3.0'):GetAddon('RetailUI')

RUI.optionsSlash = {
    name = "RetailUI Commands",
    order = 0,
    type = "group",
    args = {
        edit = {
            name = "Enable Edit Mode",
            type = 'execute',
            order = 0,
            func = function()
                local EditorMode = RUI:GetModule('EditorMode')
                if EditorMode:IsShown() then
                    EditorMode:Hide()
                else
                    EditorMode:Show()
                end
            end,
            dialogHidden = true
        },
        default = {
            name = "Load Default Settings",
            type = 'execute',
            order = 0,
            func = function()
                local UnitFrameModule    = RUI:GetModule("UnitFrame")
                local CastingBarModule   = RUI:GetModule("CastingBar")
                local ActionBarModule    = RUI:GetModule("ActionBar")
                local MinimapModule      = RUI:GetModule("Minimap")
                local QuestTrackerModule = RUI:GetModule("QuestTracker")
                local BuffFrameModule    = RUI:GetModule("BuffFrame")

                ActionBarModule:LoadDefaultSettings()
                ActionBarModule:UpdateWidgets()

                UnitFrameModule:LoadDefaultSettings()
                UnitFrameModule:UpdateWidgets()

                CastingBarModule:LoadDefaultSettings()
                CastingBarModule:UpdateWidgets()

                MinimapModule:LoadDefaultSettings()
                MinimapModule:UpdateWidgets()

                QuestTrackerModule:LoadDefaultSettings()
                QuestTrackerModule:UpdateWidgets()

                BuffFrameModule:LoadDefaultSettings()
                BuffFrameModule:UpdateWidgets()
            end,
            dialogHidden = true
        }
    }
}

RUI.default = {
    profile = {
        widgets = {}
    }
}

RUI.optionsGUI = {
    name = GetAddOnMetadata("RetailUI", "Title"),
    type = 'group',
    args = {
        version = {
            order = 1,
            type = 'description',
            name = "|cffffd700 Version|r " .. GetAddOnMetadata("RetailUI", "Version") .. "\n",
        },
        title = {
            order = 2,
            type = 'description',
            name = [[Make your interface look like Retail]],
        },
        break1 = {
            order = 3,
            type = "header",
            name = ""
        }
    }
}
