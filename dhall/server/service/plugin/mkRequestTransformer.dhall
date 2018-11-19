    let Plugin = ./Plugin.dhall

in  let config = constructors ./Config.dhall

in    λ(header : Text)
    →   { name =
            "request-transformer"
        , config =
            config.RequestTransformer { `add.headers` = header }
        }
      : Plugin
