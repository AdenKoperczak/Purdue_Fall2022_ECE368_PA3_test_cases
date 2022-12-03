# Test Cases
Unzip this into a subfolder of your project and run `./run_tests.sh`.
This assumes your executable is names `pa3`, and located one directory up
(`../pa3`).
This will run your program on each test case, and compare the outputs to my outputs.

# Naming
With the exception of max\_output, all grids use the same naming convention
as follows:
```
<rows>x<cols>[_<num>]_<type>.<ext>
```
- rows: the number of rows
- cols: the number of columns
- num:  an arbitrary number to distinguishes files.
- type: the type of the grid (see types)
- ext:  the extension indicating what is in the file

## max\_output
max\_output is simply a 0x7fff by 1 grid filled with the value 0x7fff, which will
max out the distance of the path.

## Types
- r: a fully random grid
- p: a perlin noise randm grid
- s: a "snake" grid

# Inexact Paths
The paths for "r" and "p" files may not come out to be exactly the same path files.
This is because there may be multiple paths with the same distance. As long as 
the fastest files match up these can be counted as passed.


