let Plugin = ./Plugin.dhall

let config = ./Config.dhall

in    { name =
		  "correlation-id"
	  , config =
		  config.CorrelationId
		  { header_name = "X-correl", echo_downstream = True }
	  }
	: Plugin
