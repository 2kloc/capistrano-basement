Capistrano::basement
======

This gem provides a solid basic rails stack (might support more stuff in the future) for Capistrano 3.x

Installation
------

Add this to your application's Gemfile:

    gem "capistrano", "~> 3.1"
    gem "capistrano-basement", github: "lodgem/capistrano-basement"

And then execute:

    $ bundle install

Usage
------

    # Capfile

    require 'capistrano/basement'

    # Or if you want to pick specific tasks
    require 'capistrano/basement/whenever'
    require 'capistrano/basement/nginx'
    ...

Configurable options:

    set :env,                      -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }
    set :server_name,              "domain.com"
    set :ssl_certificate_filename, nil
    set :puma_init_name,           "#{fetch(:application)}-web"
    set :puma_pid_path,            "#{shared_path}/tmp/pids/puma.pid"
    set :sidekiq_init_name,        "#{fetch(:application)}-worker"
    set :sidekiq_pid_path,         "#{shared_path}/tmp/pids/sidekiq.pid"
    set :whenever_id,              "app"

Contributing
------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

About
-------

![Lodgem](http://lodgem.s3.amazonaws.com/tm/logotype.png)

Lodgem is small team of passionate people who enjoy creating polished applications that solve interesting problems. We love to see things differently and strongly believe in progress and innovation.

At Lodgem, we use open source software a lot and that's why we try hard to share as much as possible.
