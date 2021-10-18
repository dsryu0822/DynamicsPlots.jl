# DynamicsPlots.jl

This is a visualization package to render typical figures for dynamics.

 - [x] `hiscatter()`: Recieving 1d array, lender log-log(default) histogram without bar.
   - [ ] Multi-dimensional array input.
   - [ ] Sometime errors occur.
   - [ ] Use `@recipe`.
 - [x] `timeeolvution()`: Recieving DataFrame, lender a plot using column names.
 - [ ] `bifurcation()`: Recieving DataFrame that has 1d parameter varying and some values. This will be a generalization of `time_eolvution()`.