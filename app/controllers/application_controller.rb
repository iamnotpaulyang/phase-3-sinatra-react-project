class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    get "/souls" do 
      souls = Soul.all
      souls.to_json
    end

    get "/demons" do
      demons = Demon.all
      demons.to_json
    end

    post "/souls" do
      soul = Soul.create(
        name: params[:name],
        location: params[:location],
        years_dead: params[:years_dead],
        sentence: params[:sentence],
        demon_id: params[:demon_id]
      )
      soul.to_json
    end

    post "/demons" do
      demon = Demon.create(
        name: params[:name],
        number_of_souls: params[:number_of_souls]
      )
      demon.to_json
    end

    patch "/souls/:id" do
      soul = Soul.find(params[:id])
      soul.update(
        location: params[:location]
      )
      soul.to_json
    end

    delete "/souls/:id" do
      soul = Soul.find(params[:id])
      soul.destroy
      soul.to_json
    end

end
