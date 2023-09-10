function Tween(TI, prop, inst)
  game:GetService("TweenService"):Create(inst, TI, prop):Play()
end

local w = workspace:GetDescendants()

for i,v in pairs(w) do
  if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("UnionOperation") then
    v.Material = Enum.Material.Neon
    v.Color = Color3.new(0,1,0)
    Tween(v, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 1})
  end
  wait(0.1)
end
