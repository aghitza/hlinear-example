# HLinear-example

Simple, ready-to-be-cannibalized example of using [HLinear](https://github.com/martinra/hlinear) to compute the echelon form of a matrix.

## Installation and usage

1. Install [HLinear](https://github.com/martinra/hlinear) in a directory, say hlinear-all.
2. Get hlinear-example:
   ```
   cd hlinear-all
   git clone https://github.com/aghitza/hlinear-example.git
   ```
3. Build hlinear-example:
```
cd hlinear-example
stack build
```
4. Run hlinear-example:
```
stack exec hlinear-example-exe
```
This will print out the matrices P, L and E in the PLE decomposition of a small matrix:
```
permutation:
[ 1/1 0/1 ]
[ 0/1 1/1 ]
left transformation:
[ 1/1  0/1  ]
[ 4/3  -1/3 ]
echelon form:
[ 1/1 2/1 3/1 ]
[ 0/1 1/1 2/1 ]
```
5. The code defining the input matrix and calling HLinear for the PLE decomposition is in [../app/Main.hs].
Modify to suit your needs.

## License

GPLv3, see [LICENSE](LICENSE).
