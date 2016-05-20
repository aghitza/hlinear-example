module Main where

import Lib
import HFlint.FMPQ
import HLinear.Matrix as M
import HLinear.PLE.FoldUnfold as FU
import HLinear.PLE.Decomposition as D
import HLinear.PLE.Hook as Hk

main :: IO ()
main = do
  let m = M.fromListsUnsafe [[1,2,3],[4,5,6]] :: Matrix FMPQ
      hk = D.unPLEDecomposition $ FU.pleDecompositionFoldUnfold m
      p = Hk.permutation hk
      l = Hk.leftTransformation hk
      e = Hk.echelonForm hk
  print p
  print l
  print e
