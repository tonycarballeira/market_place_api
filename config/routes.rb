Rails.application.routes.draw do

  MarketPlaceApi::Application.routes.draw do

    # Api definition
    namespace :api, defaults: { format: :json },
                                constraints: { subdomain: 'api' }, path: '/'  do
      # We are going to list our resources here
      scope module: :v1 do
        # We are going to list our resources here
      end
    end
    
  end

end


# By defining a namespace under the routes.rb file. Rails will automatically map that 
# namespace to a directory matching the name under the controllers folder, in our case the api/ directory.

 # we didn’t just add a constraints hash to specify the subdomain, but we also add the path option, and set it a backslash. 
 # This is telling Rails to set the starting path for each request to be root in relation to the subdomain(Box 2.1), achieving what we are looking for.