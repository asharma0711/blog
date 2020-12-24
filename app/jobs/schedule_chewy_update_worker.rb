class ScheduleChewyUpdateWorker
  include Sidekiq::Worker
  sidekiq_options queue: :chewy

  def perform
    Rake::Task['chewy:reset'].reenable
    Rake::Task['chewy:reset'].invoke('campaign')
  rescue Exception => e
    puts e.message
  end
end
