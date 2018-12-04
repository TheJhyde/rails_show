class RailsShowGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)
  argument :name, type: :string, default: "sources"

  def create_rails_show
    template "controller.rb", "app/controllers/#{name.pluralize}_controller.rb"
    template "show.html.erb", "app/views/#{name.pluralize}/show.html.erb"
    template "test.rb", "test/controllers/#{name.pluralize}_controller_test.rb"

    route "resources :#{name.pluralize}, only: [:show, :index]"
    route "get '/#{name.pluralize}/*id', to: '#{name.pluralize}#show'"
  end
end
