namespace :load do
  task :defaults do
    set :rails_env, "production"
  end
end

namespace :db do
  task :backup do
    ask(:backup_name, "snapshots")
    on roles(:app) do
      sudo "backup perform --trigger #{fetch(:backup_name)}"
    end
  end

  desc "Seed database"
  task :seed do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:seed"
        end
      end
    end
  end
  after "deploy:migrate", "db:seed"
end
