namespace :load do
  task :defaults do
    set :application, "app"
  end
end

namespace :foreman do
  desc "Export the Procfile to Ubuntu upstart"
  task :export do
    on roles(:app) do |host|
      within release_path do
        sudo "bundle exec foreman export upstart /etc/init -a #{fetch(:application)} -u #{fetch(:user)} -l /var/log/#{fetch(:application)}"
      end
    end
  end
  before "deploy:publishing", "foreman:export"
end
