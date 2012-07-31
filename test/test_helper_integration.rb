require "test_helper"
require "capybara/rails"

Capybara.default_driver = :poltergeist

module ActionDispatch
  class IntegrationTest
    
    include Capybara::DSL
    
    before { set_page_size_to_13inch_macbook_air }
    after  { capybara_reset_sessions! }
    
    protected

    def set_page_size_to_13inch_macbook_air
      page.driver.resize 1440, 900
    end
    
    def capybara_reset_sessions!
      Capybara.reset_sessions!
    end
    
    def capybara_response_body
      Capybara.current_session.driver.body
    end

    def save_and_open_page
      dir = "#{Rails.root}/tmp/cache/capybara"
      file = "#{dir}/#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.png"
      FileUtils.mkdir_p dir
      page.driver.render file
      wait_until { File.exists?(file) }
      system "open #{file}"
    end

    def wait_for_selector(selector)
      wait_until { has_css?(selector) }
    rescue Capybara::TimeoutError
      flunk "Ran out of time waiting for this selector: #{selector.inspect}"
    end
    
  end
  
end

# If you want to use transitional fixtures and force all threads to 1 DB connection.
class ActiveRecord::Base
  def self.connection
    @@shared_connection ||= retrieve_connection
  end
end

