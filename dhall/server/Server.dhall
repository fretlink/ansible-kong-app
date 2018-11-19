    let Service = ./service/Service.dhall

in  { kong_app_admin_url :
        Text
    , kong_app_admin_apikey :
        Text
    , services :
        List Service
    }
