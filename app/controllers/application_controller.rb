class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/projects' do
    projects = Project.all.to_json
  end

  post '/projects' do 
    name = params[:name]
    details = params[:details]
    user_id = params[:user_id]

    projects = Project.create(name: name, details: details, user_id: user_id).to_json
  end

end