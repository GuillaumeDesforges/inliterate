{-# LANGUAGE TypeApplications #-}

module Main where

import qualified Data.Text as T
import Inliterate
import Inliterate.Inspect
import Language.Haskell.Exts (Module, ParseResult (..), SrcSpanInfo, parse)
import System.Environment

main = do
  putStr "\n"
  dumpDoc "TestInliteratePreProc.hs"
  d <- readDoc "TestInliteratePreProc.hs"
  let result = T.unpack . genHaskell $ d
  putStrLn "======== RESULT"
  putStrLn result
  putStrLn "==============="
  let parsedResult = parse @(Module SrcSpanInfo) result
  case parsedResult of
    ParseOk _ -> putStrLn "Ok"
    ParseFailed location message -> do
      putStrLn $ "Location: " ++ show location
      putStrLn $ "Message: " ++ message
      error "Can't parse result"
