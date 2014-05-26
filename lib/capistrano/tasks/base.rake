namespace :load do
  task :defaults do
    set :env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }
  end
end

def template(from, to, as_root = false)
  template_path = File.expand_path("../../templates/#{from}", __FILE__)
  template = ERB.new(File.new(template_path).read).result(binding)
  upload! StringIO.new(template), to

  sudo "chmod 644 #{to}" # ensure default file chmod
  sudo "chown root:root #{to}" if as_root == true
end

task :uname do
  on roles(:all) do
    execute "uname -a"
  end
end

desc "Upload env file"
task :upload do |t|
  on roles(:all) do
    dotenv = ".env.#{fetch(:stage)}"
    upload!(dotenv, "#{shared_path}/.env")
  end
end
before "deploy:check:linked_files", "upload"
