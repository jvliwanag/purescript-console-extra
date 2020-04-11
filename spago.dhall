{ name = "console-extra"
, dependencies =
  [ "console"
  , "effect"
  , "foreign"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
