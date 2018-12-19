Environment to reproduce

https://github.com/FluxML/Zygote.jl/issues/47

```julia
julia> VERSION
v"1.2.0-DEV.35"

julia> include("reproduce.jl")
[ Info: Recompiling stale cache file /home/tamas/.julia/compiled/v1.2/LogDensityProblems/wTQV3.ji for LogDensityProblems [6fdf6af0-433a-55f7-b3ed-c6c6e0b8df7c]
ERROR: LoadError: Compiling Tuple{typeof(logdensity),Type{LogDensityProblems.Value},TransformedLogDensity{TransformVariables.ArrayTransform{TransformVariables.Identity,1},typeof(f)},Array{Float64,1}}: deepcopy of Modules not supported
Stacktrace:
 [1] error(::String) at ./error.jl:33
 [2] deepcopy_internal(::Module, ::IdDict{Any,Any}) at ./deepcopy.jl:34
 [3] _deepcopy_array_t(::Any, ::Type, ::IdDict{Any,Any}) at ./deepcopy.jl:91
 [4] deepcopy_internal(::Array{Any,1}, ::IdDict{Any,Any}) at ./deepcopy.jl:78
 [5] deepcopy_internal(::Any, ::IdDict{Any,Any}) at ./deepcopy.jl:67
 [6] _deepcopy_array_t(::Any, ::Type, ::IdDict{Any,Any}) at ./deepcopy.jl:91
 [7] deepcopy_internal at ./deepcopy.jl:78 [inlined]
 [8] deepcopy at ./deepcopy.jl:28 [inlined]
 [9] Core.Compiler.IRCode(::IRTools.Meta) at /home/tamas/.julia/packages/IRTools/yAuDJ/src/ir/wrap.jl:104
 [10] _lookup_grad(::Type) at /home/tamas/.julia/packages/Zygote/Ohw1K/src/compiler/emit.jl:124
 [11] #s53#851 at /home/tamas/.julia/packages/Zygote/Ohw1K/src/compiler/interface2.jl:17 [inlined]
 [12] #s53#851(::Any, ::Any, ::Any) at ./none:0
 [13] (::Core.GeneratedFunctionStub)(::Any, ::Vararg{Any,N} where N) at ./boot.jl:522
 [14] #3 at /home/tamas/.julia/packages/LogDensityProblems/YmAEP/src/LogDensityProblems.jl:237 [inlined]
 [15] (::Zygote.Pullback{Tuple{getfield(LogDensityProblems, Symbol("##3#4")){TransformedLogDensity{TransformVariables.ArrayTransform{TransformVariables.Identity,1},typeof(f)}},Array{Float64,1}},Tuple{getfield(Zygote, Symbol("##222#back#144")){getfield(Zygote, Symbol("##142#143")){Zygote.Context,getfield(LogDensityProblems, Symbol("##3#4")){TransformedLogDensity{TransformVariables.ArrayTransform{TransformVariables.Identity,1},typeof(f)}},Symbol,TransformedLogDensity{TransformVariables.ArrayTransform{TransformVariables.Identity,1},typeof(f)}}},Zygote.Pullback{Tuple{typeof(logdensity),Type{LogDensityProblems.Value},TransformedLogDensity{TransformVariables.ArrayTransform{TransformVariables.Identity,1},typeof(f)},Array{Float64,1}},Tuple{typeof(logdensity)}},getfield(Zygote, Symbol("##234#back#147")){getfield(Zygote, Symbol("#back#146")){:value,Zygote.Context,LogDensityProblems.Value{Float64},Float64}}}})(::Int8) at /home/tamas/.julia/packages/Zygote/Ohw1K/src/compiler/interface2.jl:0
 [16] #66 at /home/tamas/.julia/packages/Zygote/Ohw1K/src/compiler/interface.jl:38 [inlined]
 [17] logdensity(::Type{LogDensityProblems.ValueGradient}, ::LogDensityProblems.ZygoteGradientLogDensity{TransformedLogDensity{TransformVariables.ArrayTransform{TransformVariables.Identity,1},typeof(f)}}, ::Array{Float64,1}) at /home/tamas/.julia/packages/LogDensityProblems/YmAEP/src/AD_Zygote.jl:20
 [18] top-level scope at none:0
 [19] include at ./boot.jl:326 [inlined]
 [20] include_relative(::Module, ::String) at ./loading.jl:1038
 [21] include(::Module, ::String) at ./sysimg.jl:29
 [22] include(::String) at ./client.jl:403
 [23] top-level scope at none:0
in expression starting at /home/tamas/code/julia/ZygoteLogDensityProblemsBug/reproduce.jl:8
```
