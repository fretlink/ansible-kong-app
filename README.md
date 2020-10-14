kong-app
=========

This role aims at creating, on a remote kong, a list of services, routes and plugins needed by an app. The API calls are made from the ansible target host. If you use `hosts: localhost` as a target from within your playbook then all API calls will be done from your local machine.

Requirements
------------

A Kong server which you want to configure.

If you want to configure this role with [Dhall](https://dhall-lang.org/) instead of YAML, the role publishes dhall bindings defined in the `dhall/package.dhall` file. These bindings will need Dhall version `1.29.0` or higher.

Role Variables
--------------
* `kong_servers`: an array of kong_server to configure with the following configuration:
  * `kong_app_admin_url` the kong admin API url (mandatory).
  * `kong_app_admin_apikey` the apikey to use during kong admin api calls. Defaults to `""`
  * `services` an array of services to setup. Defaults to `[]`.
    * `name` the name of the service to create for this app, **mandatory**
    * `url` the url of the backend of the app, **mandatory**. May refer to an upstream by its name (https://upstream_name/path)
    * `upstream` if the url reference an upstream a dict with the configuration, optional
      * `conf` the configuration as expected by kong for an upstream creation
        * `name` mandatory name for the upstream
        * `healthchecks` optional healthchecks configuration as expected by kong api
      * `targets` an array of dict defining a target for kong
        * `target` the host:port to reach the target, **mandatory** if a target is defined
        * `weight` the weight of the target, optional
    * `plugins` An array of plugins to activate with their name and config in a dict. (Plugin objects are defined in the [Kong API documentation](https://docs.konghq.com/2.1.x/admin-api/#plugin-object))
      * `name`
      * `config`
    * `routes` An array of routes to create for this service. (Route objects are defined in the [Kong API documentation](https://docs.konghq.com/2.1.x/admin-api/#route-object))
      * `hosts`
      * `paths`
      * `protocols`
      * `methods`

Dependencies
------------

None

Example Playbook
----------------

    - hosts: localhost
      roles:
         - { role: kong-app,
             kong_servers:
               - kong_app_admin_url: http://localhost:8001,
                 services:
                   - name: example,
                     url: http://example.com,
                     plugins: [],
                     routes: [ { hosts: [my.kong.example], paths: [/] } ]
           }

Tests
----

The role is tested with automated continuous integration tests on Travis (see `tests/` directory). The test playbook targets a fake Kong server (visible in `tests/kong.py`).

License
-------

MIT (see LICENSE file for details)

Author Information
------------------

Developed at [Fretlink](https://tech.fretlink.com)
