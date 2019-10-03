let Service = ./service/package.dhall

let Server =
      { kong_app_admin_url : Text
      , kong_app_admin_apikey : Text
      , services : List Service.Type
      }

let Vault = ./../Vault.dhall

let mkServer =
        λ(vault : Vault)
      → λ(adminUrl : Text)
      → λ(services : List Service.Type)
      →   { kong_app_admin_url = adminUrl
          , kong_app_admin_apikey = vault.appAdminApiKey
          , services = services
          }
        : Server

in  { Service = Service, Type = Server, mkServer = mkServer }
