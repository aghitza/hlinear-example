module Main where

import Lib
import HFlint.FMPQ
import HLinear.Matrix as M
import HLinear.PLE.Decomposition as D

main :: IO ()
main = do
  let m = M.fromListsUnsafe [[1,2,3],[4,5,6]] :: Matrix FMPQ
      (p, l, e) = D.toMatrices $ D.pleDecomposition m
  putStrLn "permutation:"
  print p
  putStrLn "left transformation:"
  print l
  putStrLn "echelon form:"
  print e
