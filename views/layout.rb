class SampleApp
  module Views
    class Layout < Mustache
      def title
        @title || "A Page Title"
      end
    end
  end
end