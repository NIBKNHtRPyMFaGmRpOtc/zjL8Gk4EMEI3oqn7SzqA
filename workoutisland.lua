local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/iilone/oh/main/loadeher.lua"))()

local win = lib:Window("OmniHub - Workout Island",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local maintab = win:Tab("Main")

local lifting 
maintab:Toggle("AutoLift", false, function (state)
    lifting = state
    local liftre = game:GetService("ReplicatedStorage").Remotes.LiftWeight
    while lifting and wait(0.0) do
        coroutine.resume(coroutine.create(function ()
            wait(0.0)
            liftre:FireServer()
        end))
    end
end)
