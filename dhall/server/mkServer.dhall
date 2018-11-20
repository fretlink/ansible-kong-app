    let Server = ./Server.dhall

in  let Service = ./service/Service.dhall

in  let Vault = ./../Vault.dhall

in    λ(vault : Vault)
    → λ(adminUrl : Text)
    → λ(services : List Service)
    →   { kong_app_admin_url =
            adminUrl
        , kong_app_admin_apikey =
            vault.appAdminApiKey
        , services =
            services
        }
      : Server
