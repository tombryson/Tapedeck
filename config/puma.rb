workers ENV.fetch("WEB_CONCURRENCY") { 2 }
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 4 }
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }

on_worker_boot do
  # Replace 'Tapedeck::Application' with the name of your application module
  TapedeckApp::Application.config.active_record.database_configuration.tap do |config|
    ActiveRecord::Base.establish_connection(config)
  end
end