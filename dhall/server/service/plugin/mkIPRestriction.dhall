let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in    λ(whiteList : Text)
	→   { name =
			"ip-restriction"
		, config =
			config.IPRestriction { whitelist = whiteList }
		}
	  : Plugin