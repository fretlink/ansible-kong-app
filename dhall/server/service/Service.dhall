let Plugin = ./plugin/Plugin.dhall

let Route = ./Route.dhall

in  { name : Text, url : Text, plugins : List Plugin, routes : List Route }
