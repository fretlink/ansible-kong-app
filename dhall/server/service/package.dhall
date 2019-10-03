let Plugin = ./plugin/package.dhall

let Route = ./Route.dhall

let Service =
      { name : Text
      , url : Text
      , plugins : List Plugin.Type
      , routes : List Route
      }

in  { Type = Service, Route = Route, Plugin = Plugin }
