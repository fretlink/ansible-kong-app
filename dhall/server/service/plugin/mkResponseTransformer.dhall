let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in  λ(header : Text) →
        { name = "response-transformer"
        , config = config.ResponseTransformer { add.headers = [ header ] }
        }
      : Plugin
