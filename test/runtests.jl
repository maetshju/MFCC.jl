## runtests.jl  Unit tests for MFCC
## (c) 2015 David A. van Leeuwen
##
## Licensed under the MIT software license, see LICENSE.md

using WAV
using MFCC
using SpecialFunctions

x, meta, params = feacalc("bl2.wav", normtype=:none, method=:wav, augtype=:none, sadtype=:none)
y = feaload("bl2.mfcc")

@assert x == y

z = warp(x)
z = deltas(x)
z = znorm(x)
z = stmvn(x)

println("Tests passed")
