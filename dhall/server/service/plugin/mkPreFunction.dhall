let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in    λ(functions : List Text)
    →   { name = "pre-function"
        , config = config.PreFunction { functions = functions }
        }
      : Plugin
