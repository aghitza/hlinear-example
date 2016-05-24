module Main where

import Lib
import HFlint.FMPQ
import HLinear.Matrix as M
import HLinear.PLE.Decomposition as D

main :: IO ()
main = do
  let m = M.fromListsUnsafe [[1,2,3],[4,5,6]] :: Matrix FMPQ
      (pm, lm, em) = D.toMatrices $ D.pleDecomposition m
  putStrLn "permutation:"
  print pm
  putStrLn "left transformation:"
  print lm
  putStrLn "echelon form:"
  print em
