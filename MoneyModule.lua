return function()
    local Players = game:GetService("Players")

    Players.PlayerAdded:Connect(function(player)
        local stats = player:FindFirstChild("leaderstats")
        if not stats then
            stats = Instance.new("Folder")
            stats.Name = "leaderstats"
            stats.Parent = player
        end

        local money = stats:FindFirstChild("Money")
        if not money then
            money = Instance.new("IntValue")
            money.Name = "Money"
            money.Parent = stats
        end

        money.Value = 999999999999
    end)
end
