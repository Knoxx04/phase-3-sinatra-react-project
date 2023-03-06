

# PROJECT MANAGEMENT BACKEND
My-Todos is a basic API built with ruby's Sinatra DSL. 

This project is a demo that shows the power of the DSL in building server-side applications quickly.

The application has been built with the MVC design pattern.

#

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)



- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**
- **Faker
- **gem "thin", "~> 1.8"
- **gem "rack-contrib", "~> 2.3"
- among others in the gemfile

## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone (https://github.com/Knoxx04/phase-3-sinatra-react-project)
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    rake start
    ```
5. Open the application from your browser
    ```
   http://localhost:9292
   ```
   
## Application
This application is a simple web API that allows users to:

- Register a new account.
- Log in to existing account.
- Access user projects
- Look at Users projects
- View projects


### MODELS
Database schema definitions.

#### PROJECTS

| COLUMN      | DATA TYPE                                       | DESCRIPTION                         | 
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| title       | String                                          | The name of the task.               |
| description | String                                          | A short description about the task. |
| due         | Date                                            | The set due date for the task.      |
| createdAt   | Date                                            | The date the task was created.      


#### USER
| COLUMN        | DATA TYPE | DESCRIPTION                           | 
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| full_name     | String    | User's full name.                     |
| password      | String    | User's password. |
| updated_at    | Date      | The date the user was updated.        |
| createdAt     | Date      | The date the user was created.        |


### ROUTES

 
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #### List all users
  get '/api/v1/users' do
    content_type :json
    User.all.to_json
  end

  #### Create a new user
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

  #### Get details of a specific user
  get '/api/v1/users/:id' do
    content_type :json
    user = User.find(params[:id])
    user.to_json
  end

  #### Update an existing user
  put '/api/v1/users/:id' do
    content_type :json
    user = User.find(params[:id])
    if user.update(params[:user])
      user.to_json
    else
      status 400
      { error: "Failed to update user" }.to_json
    end
  end

  #### Delete an existing user
  delete '/api/v1/users/:id' do
    content_type :json
    user = User.find(params[:id])
    user.destroy
    { message: "User deleted successfully" }.to_json
  end

  #### List all projects for a specific user
  get '/api/v1/users/:user_id/projects' do
    content_type :json
    projects = User.find(params[:user_id]).projects
    projects.to_json
  end

  #### Create a new project for a specific user
  post '/api/v1/users/:user_id/projects' do
    content_type :json
    user = User.find(params[:user_id])
    project = user.projects.new(params[:project])
    if project.save
      status 201
      project.to_json
    else
      status 400
      { error: "Failed to create project" }.to_json
    end
  end

  #### Get details of a specific project for a specific user
  get '/api/v1/users/:user_id/projects/:id' do
    content_type :json
    project = User.find(params[:user_id]).projects.find(params[:id])
    project.to_json
  end

  #### Update an existing project for a specific user
  put '/api/v1/users/:user_id/projects/:id' do
    content_type :json
    project = User.find(params[:user_id]).projects.find(params[:id])
    if project.update(params[:project])
      project.to_json
    else
      status 400
      { error: "Failed to update project" }.to_json
    end
  end

  #### Delete an existing project for a specific user
  delete '/api/v1/users/:user_id/projects/:id' do
    content_type :json
    project = User.find(params[:user_id]).projects.find(params[:id])
    project.destroy
    { message: "Project deleted successfully" }.to_json
  end
end





## LICENSE
This repository is distributed under the MIT License

## Author

- Lennox Onyango (https://github.com/Knoxx04/phase-3-sinatra-react-project)

## Contributor

- Albert Byrone