# frozen_string_literal: true

schedule_file = 'config/schedule.yml'
Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file) && Sidekiq.server?
# Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
#   [user, password] == ['test', 'test']
# end
