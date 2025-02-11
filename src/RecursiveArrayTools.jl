__precompile__()
"""
$(DocStringExtensions.README)
"""
module RecursiveArrayTools

using DocStringExtensions
  using Requires, RecipesBase, StaticArrays, Statistics,
        ArrayInterface, ZygoteRules, LinearAlgebra

  abstract type AbstractVectorOfArray{T, N, A} <: AbstractArray{T, N} end
  abstract type AbstractDiffEqArray{T, N, A} <: AbstractVectorOfArray{T, N, A} end

  include("utils.jl")
  include("vector_of_array.jl")
  include("array_partition.jl")
  include("init.jl")
  include("zygote.jl")

  export VectorOfArray, DiffEqArray, AbstractVectorOfArray, AbstractDiffEqArray,
         vecarr_to_arr, vecarr_to_vectors, tuples

  export recursivecopy, recursivecopy!, vecvecapply, copyat_or_push!,
         vecvec_to_mat, recursive_one, recursive_mean, recursive_bottom_eltype,
         recursive_unitless_bottom_eltype, recursive_unitless_eltype

  export ArrayPartition


end # module
