require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Project
  class Application < Rails::Application
    config.load_defaults 7.0
    console do
      module DummyConsole
        def event_store
          Rails.configuration.event_store
        end

        def command_bus
          Rails.configuration.command_bus
        end
      end
      Rails::ConsoleMethods.include(DummyConsole)
    end
  end
end
