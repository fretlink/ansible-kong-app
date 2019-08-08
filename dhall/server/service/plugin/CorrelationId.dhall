let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in    λ(generator : Optional Text)
	→   { name =
			"correlation-id"
		, config =
			config.CorrelationId
			{ header_name =
				"X-correl"
			, echo_downstream =
				True
			, generator =
				Optional/fold
				Text
				generator
				Text
				(λ(t : Text) → t)
				"uuid#counter"
			}
		}
	  : Plugin
