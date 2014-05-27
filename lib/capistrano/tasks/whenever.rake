namespace :load do
  task :defaults do
    set :whenever_id, "app"
  end
end

namespace :whenever do
  desc "Update crontab"
  task :update_crontab do
    on roles(:app) do
      within release_path do
        execute :bundle, :exec, :whenever, "-i", fetch(:whenever_id)
      end
    end
  end
  after "deploy:updated", "whenever:update_crontab"
end
