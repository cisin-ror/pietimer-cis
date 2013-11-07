require 'pietimer-cis/view_helpers'
module PietimerCis
  class Railtie < ::Rails::Railtie
    initializer "pietimer-cis.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
