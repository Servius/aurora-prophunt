hook.Add( "Initialize", "PerformanceHook", function()
    hook.Remove( "PlayerTick", "TickWidgets" )
end )