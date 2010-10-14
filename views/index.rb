class SampleApp
  module Views
    class Index < Layout
      def title
        "Welcome!"
      end
      
      def word
        "The Good Word Is: Interpolation!"
      end
    end
  end
end