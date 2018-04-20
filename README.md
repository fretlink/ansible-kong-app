kong-app
=========

This role aims at creating on a remote kong the service, routes and plugins needed by an app

Requirements
------------

None at the moment

Role Variables
--------------

* `kong_app_admin_url` the kong admin url (mandatory).
* `kong_app_admin_apikey` the apikey to use kong admin api. Default to ""
* `kong_app_service_name` the nameof the service to create for this app, mandatory
* `kong_app_service_url` the url of the backend of the app, mandatory
* `kong_app_plugins` An array of plugins to activate with their name and config in a dict
  * `name`
  * `config`
* `kong_app_routes` An array of routes to create for this app.
  * `hosts`
  * `paths`
  * `protocols`
  * `methods`

Dependencies
------------



Example Playbook
----------------

    - hosts: localhost
      roles:
         - { role: kong-app, kong_app_admin_url: http://localhost:8001,
             kong_app_service_name: example,
             kong_app_service_url: http://example.com,
             kong_app_plugins: [],
             kong_app_routes: [ { hosts: [my.kong.example], paths: [/] } ]
           }

License
-------

TBD

Author Information
------------------

FretLink Team
