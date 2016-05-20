module Main where

import Lib
import HFlint.FMPQ
import HLinear.Matrix as M
import HLinear.PLE.FoldUnfold as FU
import HLinear.PLE.Decomposition as D
import HLinear.PLE.Hook as Hk
import HLinear.PLE.Hook.EchelonForm as EF
import HLinear.PLE.Hook.RPermute as RP
import HLinear.PLE.Hook.LeftTransformation as LT

main :: IO ()
main = do
  let m = M.fromListsUnsafe [[1,2,3],[4,5,6]] :: Matrix FMPQ
      hk = D.unPLEDecomposition $ FU.pleDecompositionFoldUnfold m
      p = Hk.permutation hk
      pm = RP.toMatrix p :: Matrix FMPQ
      l = Hk.leftTransformation hk
      lm = LT.toMatrix l
      e = Hk.echelonForm hk
      em = EF.toMatrix e
  putStrLn "permutation:"
  print pm
  putStrLn "left transformation:"
  print lm
  putStrLn "echelon form:"
  print em
