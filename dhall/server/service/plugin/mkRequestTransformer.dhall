let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in    λ(header : Text)
	→   { name =
			"request-transformer"
		, config =
			config.RequestTransformer { add = { headers = [ header ] } }
		}
	  : Plugin