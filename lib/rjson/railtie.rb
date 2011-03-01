module RJSON
  class Railtie < Rails::Railtie
    initializer 'rjson.register_template_handler' do
      ActionView::Template.register_template_handler :rjson, RJSON::Handler
    end
  end
end