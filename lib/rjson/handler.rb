require 'action_view/template'
require 'rjson/string'

module RJSON
  class Handler
    class_attribute :default_format
    self.default_format = Mime::JSON
    
    class << self
      def call(template)
        <<-COMPILED_METHOD
          contents=begin;
            #{template.source}
          end
        
          RJSON::String.new(contents.to_json)
        COMPILED_METHOD
      end
    end
  end
end
