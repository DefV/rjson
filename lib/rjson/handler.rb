require 'action_view/template'
require 'rjson/string'

module RJSON
  class Handler < ActionView::TemplateHandler
    include ActionView::Template::Handlers::Compilable
    
    self.default_format = Mime::JSON
    
    def compile(template)
      <<-COMPILED_METHOD
        contents=begin;
          #{template.source}
        end
        
        RJSON::String.new(contents.to_json)
      COMPILED_METHOD
    end
  end
end
