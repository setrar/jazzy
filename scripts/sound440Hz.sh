#!/usr/bin/env cabal
{- cabal:
build-depends: base     ^>= 4.14.3.0
             , shelly   ^>= 1.9.0
             , Euterpea ^>= 2.0.8
             , arrows    >= 0.4
-}
{-# LANGUAGE Arrows #-}

import Euterpea

sineTable :: Table
sineTable = tableSinesN 4096 [1]

sine440 :: AudSF () Double
sine440 =
   proc _ -> do
      y <- osc sineTable 0 -< 440
      returnA -< y

main :: IO ()
main = do
   outFile "docs/sound/script-sine440.wav" 2.0 sine440
   putStrLn ("440Hz")

