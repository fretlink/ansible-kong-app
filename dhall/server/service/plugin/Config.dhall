< CorrelationId :
    { header_name : Text, echo_downstream : Bool, generator : Text }
| RequestTransformer : { add : { headers : List Text } }
| ResponseTransformer : { add : { headers : List Text } }
| RequestTermination :
    { status_code : Natural, content_type : Text, body : Text }
| IPRestriction : { whitelist : Text }
| PreFunction : { functions : List Text }
>
