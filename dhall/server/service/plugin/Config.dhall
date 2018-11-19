< CorrelationId :
    { header_name : Text, echo_downstream : Bool }
| RequestTransformer :
    { `add.headers` : Text }
| RequestTermination :
    { status_code : Natural, content_type : Text, body : Text }
| IPRestriction :
    { whitelist : Text }
>
