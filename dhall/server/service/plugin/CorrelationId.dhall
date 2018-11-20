    let Plugin = ./Plugin.dhall

in  let config = constructors ./Config.dhall

in    { name =
          "correlation-id"
      , config =
          config.CorrelationId
          { header_name = "X-correl", echo_downstream = True }
      }
    : Plugin
