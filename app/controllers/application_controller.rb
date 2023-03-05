class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # List all users
  get '/api/v1/users' do
    content_type :json
    User.all.to_json
  end

  # Create a new user
  post '/api/v1/users' do
    content_type :json
    user = User.new(params[:user])
    if user.save
      status 201
      user.to_json
    else
      status 400
      { error: "Failed to create user" }.to_json
    end
  end

#   # Get details of a specific user
#   get '/api/v1/users/:id' do
#     content_type :json
#     user = User.find(params[:id])
#     user.to_json
#   end

#   # Update an existing user
#   put '/api/v1/users/:id' do
#     content_type :json
#     user = User.find(params[:id])
#     if user.update(params[:user])
#       user.to_json
#     else
#       status 400
#       { error: "Failed to update user" }.to_json
#     end
#   end

#   # Delete an existing user
#   delete '/api/v1/users/:id' do
#     content_type :json
#     user = User.find(params[:id])
#     user.destroy
#     { message: "User deleted successfully" }.to_json
#   end

#   # List all projects for a specific user
#   get '/api/v1/users/:user_id/projects' do
#     content_type :json
#     projects = User.find(params[:user_id]).projects
#     projects.to_json
#   end

#   # Create a new project for a specific user
#   post '/api/v1/users/:user_id/projects' do
#     content_type :json
#     user = User.find(params[:user_id])
#     project = user.projects.new(params[:project])
#     if project.save
#       status 201
#       project.to_json
#     else
#       status 400
#       { error: "Failed to create project" }.to_json
#     end
#   end

#   # Get details of a specific project for a specific user
#   get '/api/v1/users/:user_id/projects/:id' do
#     content_type :json
#     project = User.find(params[:user_id]).projects.find(params[:id])
#     project.to_json
#   end

#   # Update an existing project for a specific user
#   put '/api/v1/users/:user_id/projects/:id' do
#     content_type :json
#     project = User.find(params[:user_id]).projects.find(params[:id])
#     if project.update(params[:project])
#       project.to_json
#     else
#       status 400
#       { error: "Failed to update project" }.to_json
#     end
#   end

#   # Delete an existing project for a specific user
#   delete '/api/v1/users/:user_id/projects/:id' do
#     content_type :json
#     project = User.find(params[:user_id]).projects.find(params[:id])
#     project.destroy
#     { message: "Project deleted successfully" }.to_json
#   end
# end



