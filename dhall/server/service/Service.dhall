let Plugin = ./plugin/Plugin.dhall

let Route = ./route/Route.dhall

in  { name : Text, url : Text, plugins : List Plugin, routes : List Route }
