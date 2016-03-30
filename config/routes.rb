Rails.application.routes.draw do

  MarketPlaceApi::Application.routes.draw do

    # Api definition
    namespace :api, defaults: { format: :json },
                                constraints: { subdomain: 'api' }, path: '/'  do
      # We are going to list our resources here
    end
    
  end

end


# By defining a namespace under the routes.rb file. Rails will automatically map that 
# namespace to a directory matching the name under the controllers folder, in our case the api/ directory.