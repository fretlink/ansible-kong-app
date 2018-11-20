    let Plugin = ./plugin/Plugin.dhall

in  let Route = ./route/Route.dhall

in  { name : Text, url : Text, plugins : List Plugin, routes : List Route }
