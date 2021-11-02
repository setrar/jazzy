#!/usr/bin/env cabal
{- cabal:
build-depends: base     ^>= 4.14.3.0
             , shelly   ^>= 1.9.0
             , Euterpea ^>= 2.0.8
-}

module Main where

import Euterpea

main :: IO()
main = do
   play $ c 4 qn
   devices
   putStrLn "Hello world! in C4 and displays MIDI devices"
