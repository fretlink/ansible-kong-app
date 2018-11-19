    let Plugin = ./Plugin.dhall

in  let config = constructors ./Config.dhall

in    λ(whiteList : Text)
    →   { name =
            "ip-restriction"
        , config =
            config.IPRestriction { whitelist = whiteList }
        }
      : Plugin
