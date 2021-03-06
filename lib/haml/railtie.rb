if defined?(ActiveSupport)
  require 'haml/template/options'
  ActiveSupport.on_load(:before_initialize) do
    ActiveSupport.on_load(:action_view) do
      require "haml/template"
    end
  end
end

require "haml/helpers/safe_erubis_template"
Haml::Filters::Erb.template_class = Haml::SafeErubisTemplate