require 'resque/tasks'
require 'resque/scheduler/tasks'

namespace :resque do
  task setup: :environment do
    require 'resque'
    require 'resque/scheduler'

    ENV['QUEUE'] = '*'

    Resque.redis = 'localhost:6379' unless Rails.env == 'production'
    Resque.schedule = YAML.load_file(File.join(Rails.root.to_s, 'config', 'resque_scheduler.yml'))
  end
end
