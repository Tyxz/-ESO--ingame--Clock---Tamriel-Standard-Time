describe("Compatibility", function()
    _G.LibClockTST = {}
    local tHour, tMinute, tSecond = 12, 56, 21
    setup(function()
        function LibClockTST:Instance()
            return {
                GetTime = function()
                    return { hour = tHour, minute = tMinute, second = tSecond }
                end
            }
        end
    end)

    it("should return an object with an hour, minute and second number", function()
        require("Lib.Core.Compatibility")
        local tResult = GetTST()
        assert.is.same(tResult, { tHour, tMinute, tSecond })
    end)
end)