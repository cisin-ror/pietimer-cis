require 'rails'

if ::Rails.version < "3.1"
  module PietimerCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)

        def copy_jquery_nested
          copy_file "javascripts/jquery.pietimer.min.js", "public/javascripts/jquery.pietimer.min.js"
        end
      end
    end
  end
else
  module PietimerCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)
        def add_assets
          if detect_js_format.nil?
            copy_file "javascripts/jquery.pietimer.min.js", "app/assets/javascripts/jquery.pietimer.min.js"
          else
            insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require jquery.pietimer.min\n", :after => "jquery_ujs\n"
          end
        end
        def detect_js_format
          return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
          return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
        end
      end
    end
  end
end
