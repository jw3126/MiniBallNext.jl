using BoundingSphere
const MB = BoundingSphere
using StaticArrays

@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

include("helpers.jl")
include("test_broken.jl")
include("test_util.jl")
include("test_welzl.jl")
include("test_degenerate_examples.jl")
include("test_unit_circle.jl")
include("perf.jl")
