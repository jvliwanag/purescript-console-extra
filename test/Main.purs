module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console.Extra (error2, info', log, table)
import Effect.Exception as Exception

main :: Effect Unit
main = do
  log "🍝"
  info' ["🍍", "✒️"]
  table [1, 2, 3]
  error2 "Uh oh" (Exception.error "kaboom")
