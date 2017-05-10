Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # You can have the root of your site routed with "root"
  root 'application#login'
  
  get '/home', {:controller => 'application', :action => 'profile'}
  get '/profile', {:controller => 'application', :action => 'createStudent'}
  get '/profile1', {:controller => 'application', :action => 'createCourse'}
  get '/profile2', {:controller => 'application', :action => 'createTeacher'}
  get '/home2', {:controller => 'application', :action => 'index'}
  get 'home3', {:controller => 'application', :action => 'createHomeroom'}
  
  #STUDENT_____________________________________________________________________________
  
  #Create
  get '/students/new', {:controller => 'students', :action => 'newform'}
  post '/students/new', {:controller => 'students', :action => 'add'}
  
  #Read
  get '/students', {:controller => 'students', :action => 'index'} 
  get '/students/:id', {:controller => 'students', :action => 'show'}
  
  #Update
  get '/student/edit/:id', {:controller => 'students', :action => 'editform'}
  post '/student/edit/', {:controller => 'students', :action => 'edit'}
    
  #Delete
  get '/student/delete/:id', {:controller => 'students', :action => 'delete'}
  
  #TEACHER_____________________________________________________________________________
  
   #Create
  get '/teachers/new', {:controller => 'teachers', :action => 'newform'}
  post '/teachers/new', {:controller => 'teachers', :action => 'add'}
  
  #Read
  get '/teachers', {:controller => 'teachers', :action => 'index'} 
  get '/teachers/:id', {:controller => 'teachers', :action => 'show'}
  
  #Update
  get '/teacher/edit/:id', {:controller => 'teachers', :action => 'editform'}
  post '/teacher/edit/', {:controller => 'teachers', :action => 'edit'}
    
  #Delete
  get '/teacher/delete/:id', {:controller => 'teachers', :action => 'delete'}

 #COURSES_____________________________________________________________________________
  
   #Create
  get '/courses/new', {:controller => 'courses', :action => 'newform'}
  post '/courses/new', {:controller => 'courses', :action => 'add'}
  
  #Read
  get '/courses', {:controller => 'courses', :action => 'index'} 
  get '/courses/:id', {:controller => 'courses', :action => 'show'}
  
  #Update
  get '/course/edit/:id', {:controller => 'courses', :action => 'editform'}
  post '/course/edit/', {:controller => 'courses', :action => 'edit'}
    
  #Delete
  get '/course/delete/:id', {:controller => 'courses', :action => 'delete'}
  
   #HOMEROOM_____________________________________________________________________________
  
   #Create
  get '/homerooms/new', {:controller => 'homerooms', :action => 'newform'}
  post '/homerooms/new', {:controller => 'homerooms', :action => 'add'}
  
  #Read
  get '/homerooms', {:controller => 'homerooms', :action => 'index'} 
  get '/homerooms/:id', {:controller => 'homerooms', :action => 'show'}
  
  #Update
  get '/homeroom/edit/:id', {:controller => 'homerooms', :action => 'editform'}
  post '/homeroom/edit/', {:controller => 'homerooms', :action => 'edit'}
    
  #Delete
  get '/homeroom/delete/:id', {:controller => 'homerooms', :action => 'delete'}
end
