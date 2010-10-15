class SampleApp
  module Views
    class Layout < Mustache
      include ::Sinatra::Bundles::Helpers
      
      def title
        @title || "A Page Title"
      end
      
      def settings
        @app_settings
      end
      
      def core_stylesheets
        stylesheet_bundle_link_tag(:core)
      end
      
      def core_javascripts
        javascript_bundle_include_tag(:all)
      end
    end
  end
end