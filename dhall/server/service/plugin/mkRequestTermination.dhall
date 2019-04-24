let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in    λ(statusCode : Natural)
    → λ(contentType : Text)
    → λ(body : Text)
    →   { name =
            "request-termination"
        , config =
            config.RequestTermination
            { status_code =
                statusCode
            , content_type =
                contentType
            , body =
                body
            }
        }
      : Plugin
