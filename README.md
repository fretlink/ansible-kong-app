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
* `kong_services` an array of services to setup (default to [])
  * `name` the name of the service to create for this app, mandatory
  * `url` the url of the backend of the app, mandatory
  * `plugins` An array of plugins to activate with their name and config in a dict
    * `name`
    * `config`
  * `routes` An array of routes to create for this service.
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
             kong_app_services: [ name:example,
             url: http://example.com,
             plugins: [],
             routes: [ { hosts: [my.kong.example], paths: [/] } ]]
           }

License
-------

TBD

Author Information
------------------

FretLink Team
