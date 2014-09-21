namespace :load do
  task :defaults do
    set :clockwork_roles,   -> { :app }
    set :clockwork_command, -> { 'bundle exec ruby script/clockworkd' }
    set :clockwork_config,  -> { 'clock.rb' }
    set :clockwork_pid_dir, -> { 'tmp/pids' }
    set :clockwork_log_dir, -> { 'log' }
  end
end

namespace :clockwork do
  [:start, :stop, :restart].each do |action|
    task(action) do
      on roles fetch(:clockwork_roles) do |host|
        within release_path do
          with fetch(:clockwork_command_environment_variables) do
            execute "#{fetch(:clockwork_command)} -c #{fetch(:clockwork_config)} --pid-dir=#{fetch(:clockwork_pid_dir} --log --log-dir=#{fetch(:clockwork_log_dir)} #{action}"
          end
        end
      end
    end
  end
end

namespace :deploy do
  after :publishing, 'clockwork:restart'
end
