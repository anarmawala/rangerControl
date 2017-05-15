Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # You can have the root of your site routed with "root"
  root 'application#login'


  
  #STUDENT_____________________________________________________________________________
  
  #Create
  get '/students/new', {:controller => 'students', :action => 'newForm'}
  post '/students/new', {:controller => 'students', :action => 'add'}
  
  #Read
  get '/students', {:controller => 'students', :action => 'index'} 
  get '/students/:id', {:controller => 'students', :action => 'show'}
  
  #Update
  get '/students/edit/:id', {:controller => 'students', :action => 'editForm'}
  post '/students/edit/', {:controller => 'students', :action => 'edit'}
    
  #Delete
  get '/students/delete/:id', {:controller => 'students', :action => 'delete'}
  
  #TEACHER_____________________________________________________________________________
  
   #Create
  get '/teachers/new', {:controller => 'teachers', :action => 'newForm'}
  post '/teachers/new', {:controller => 'teachers', :action => 'add'}
  
  #Read
  get '/teachers', {:controller => 'teachers', :action => 'index'} 
  get '/teachers/:id', {:controller => 'teachers', :action => 'show'}
  
  #Update
  get '/teachers/edit/:id', {:controller => 'teachers', :action => 'editForm'}
  post '/teachers/edit/', {:controller => 'teachers', :action => 'edit'}
    
  #Delete
  get '/teachers/delete/:id', {:controller => 'teachers', :action => 'delete'}

 #COURSES_____________________________________________________________________________
  
   #Create
  get '/courses/new', {:controller => 'courses', :action => 'newForm'}
  post '/courses/new', {:controller => 'courses', :action => 'add'}
  
  #Read
  get '/courses', {:controller => 'courses', :action => 'index'} 
  get '/courses/:id', {:controller => 'courses', :action => 'show'}
  
  #Update
  get '/courses/edit/:id', {:controller => 'courses', :action => 'editForm'}
  post '/courses/edit/', {:controller => 'courses', :action => 'edit'}
    
  #Delete
  get '/course/delete/:id', {:controller => 'courses', :action => 'delete'}
  
   #HOMEROOM_____________________________________________________________________________
  
   #Create
  get '/homerooms/new', {:controller => 'homerooms', :action => 'newForm'}
  post '/homerooms/new', {:controller => 'homerooms', :action => 'add'}
  
  #Read
  get '/homerooms', {:controller => 'homerooms', :action => 'index'} 
  get '/homerooms/:id', {:controller => 'homerooms', :action => 'show'}
  
  #Update
  get '/homerooms/edit/:id', {:controller => 'homerooms', :action => 'editForm'}
  post '/homerooms/edit/', {:controller => 'homerooms', :action => 'edit'}
    
  #Delete
  get '/homerooms/delete/:id', {:controller => 'homerooms', :action => 'delete'}
end
