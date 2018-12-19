using LogDensityProblems, TransformVariables
import Zygote

f(x) = -3*abs2(x[1])
ℓ = TransformedLogDensity(as(Array, asℝ, 1), f)
∇ℓ = ADgradient(:Zygote, ℓ)
x = randn(1)
logdensity(LogDensityProblems.ValueGradient, ∇ℓ, x)
