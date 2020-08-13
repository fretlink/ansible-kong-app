let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in  λ(generator : Optional Text) →
        { name = "correlation-id"
        , config =
            config.CorrelationId
              { header_name = "X-correl"
              , echo_downstream = True
              , generator =
                  merge
                    { None = "uuid#counter", Some = λ(x : Text) → x }
                    generator
              }
        }
      : Plugin
