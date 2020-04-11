module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console.Extra (info, log, table)

main :: Effect Unit
main = do
  log "🍝"
  info ["🍍", "✒️b"]
  table [1, 2, 3]
