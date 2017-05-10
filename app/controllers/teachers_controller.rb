class TeachersController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    
  end
  
  def add
    newTeacher = Teacher.new
    newTeacher.TID = params[:teacherID]
    newTeacher.TEmail = params[:teacherEmail]
    newTeacher.TName = params[:teacherName]
    newTeacher.TAdmin = params[:teacherAdmin]
    
    newTeacher.save
    redirect_to '/home2'
  end
  
  def index
    
  end
  
  def show
    
  end
  
  def editform
    
  end
  
  def edit
    
  end
  
  def delete
    
  end
end
