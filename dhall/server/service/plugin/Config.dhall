< CorrelationId :
	{ echo_downstream : Bool, header_name : Text }
| IPRestriction :
	{ whitelist : Text }
| PreFunction :
	{ functions : List Text }
| RequestTermination :
	{ body : Text, content_type : Text, status_code : Natural }
| RequestTransformer :
	{ add : { headers : List Text } }
>