module Effect.Console.Extra
  ( log
  , log2
  , log3
  , log'
  , warn
  , warn'
  , error
  , error'
  , info
  , info'
  , table
  , module C
  ) where

import Prelude
import Effect (Effect)
import Effect.Console (time, timeLog, timeEnd, clear) as C
import Foreign (unsafeToForeign)

log :: forall a. a -> Effect Unit
log a = log' [ a ]

log2 :: forall a b. a -> b -> Effect Unit
log2 a b =
  log'
    [ unsafeToForeign a
    , unsafeToForeign b
    ]

log3 :: forall a b c. a -> b -> c -> Effect Unit
log3 a b c =
  log'
    [ unsafeToForeign a
    , unsafeToForeign b
    , unsafeToForeign c
    ]

log' :: forall a. Array a -> Effect Unit
log' = _log

foreign import _log :: forall a. Array a -> Effect Unit

warn :: forall a. a -> Effect Unit
warn a = warn' [ a ]

warn2 :: forall a b. a -> b -> Effect Unit
warn2 a b =
  warn'
    [ unsafeToForeign a
    , unsafeToForeign b
    ]

warn3 :: forall a b c. a -> b -> c -> Effect Unit
warn3 a b c =
  warn'
    [ unsafeToForeign a
    , unsafeToForeign b
    , unsafeToForeign c
    ]

warn' :: forall a. Array a -> Effect Unit
warn' = _warn

foreign import _warn :: forall a. Array a -> Effect Unit

error :: forall a. a -> Effect Unit
error a = error' [ a ]

error2 :: forall a b. a -> b -> Effect Unit
error2 a b =
  error'
    [ unsafeToForeign a
    , unsafeToForeign b
    ]

error3 :: forall a b c. a -> b -> c -> Effect Unit
error3 a b c =
  error'
    [ unsafeToForeign a
    , unsafeToForeign b
    , unsafeToForeign c
    ]

error' :: forall a. Array a -> Effect Unit
error' = _error

foreign import _error :: forall a. Array a -> Effect Unit

info :: forall a. a -> Effect Unit
info a = info' [ a ]

info2 :: forall a b. a -> b -> Effect Unit
info2 a b =
  info'
    [ unsafeToForeign a
    , unsafeToForeign b
    ]

info3 :: forall a b c. a -> b -> c -> Effect Unit
info3 a b c =
  info'
    [ unsafeToForeign a
    , unsafeToForeign b
    , unsafeToForeign c
    ]

info' :: forall a. Array a -> Effect Unit
info' = _info

foreign import _info :: forall a. Array a -> Effect Unit

foreign import table :: forall a. a -> Effect Unit
