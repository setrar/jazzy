> {-# LANGUAGE Arrows #-}

http://www.euterpea.com/download-and-installation/

Compiling to Executable

On newer Macs, MUIs will not work from the GHCi interpreter. Failure cases range from unresponsive windows to threading errors. However, if this happens to you, you will still be able to run MUIs successfully by compiling your code to executable. Windows users can also benefit from compiling to executable with some MUIs because it can help speed up execution between frames, which is useful for interactive programs.

The easiest way to try compiling a MUI to executable the first time is to use one of the MUI example that comes included with HSoM. 


> module Main where

> import Euterpea

> sineTable :: Table
> sineTable = tableSinesN 4096 [1]

> sine440 :: AudSF () Double
> sine440 =
>    proc _ -> do
>       y <- osc sineTable 0 -< 440
>       returnA -< y


> main :: IO ()
> main = outFile "docs/sine440.wav" 2.0 sine440
