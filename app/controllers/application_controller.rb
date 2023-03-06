# class ApplicationController < Sinatra::Base
#   set :default_content_type, 'application/json'
  
#   # Add your routes here
#   get "/" do
#     { message: "Good luck with your project!" }.to_json
#   end

#   get '/projects' do
#     projects = Project.all.to_json
#   end

#   get '/projects/:id' do
#   id = params[:id]
#   project = Project.find_by(id: id)

#   if project
#     return project.to_json
#   else
#     status 404
#     return { message: "Project with ID #{id} not found." }.to_json
#   end
# end


#   post '/projects' do 
#     name = params[:name]
#     details = params[:details]
#     user_id = params[:user_id]

#     projects = Project.create(name: name, details: details, user_id: user_id).to_json
#   end


#   delete '/projects/:id' do
#   id = params[:id]
#   project = Project.find_by(id: id)

#   if project
#     project.destroy
#     return { message: "Project with ID #{id} has been deleted." }.to_json
#   else
#     status 404
#     return { message: "Project with ID #{id} not found." }.to_json
#   end
# end



  

#   put '/projects/:id' do
#     projects = Project.find(params[:id])
#     projects.update(name: params[:name], details: params[:details])
#   end
  



# end