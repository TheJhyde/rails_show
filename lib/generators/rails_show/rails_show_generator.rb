class RailsShowGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)
  argument :name, type: :string, default: "source"

  def create_rails_show
    template "controller.rb", "app/controllers/#{name}_controller.rb"
    template "show.html.erb", "app/views/#{name}/show.html.erb"
    template "test.rb", "test/controllers/#{name}_controller_test.rb"

    route "resources :#{name}, only: [:show, :index]"
    route "get '/#{name}/*id', to: '#{name}#show'"
  end
end
