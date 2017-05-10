class CoursesController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    
  end
  
  def add
    newCourse = Course.new
    newCourse.CID = params[:courseID]
    newCourse.TID = params[:courseTID]
    newCourse.CType = params[:courseType]
    newCourse.CName = params[:courseName]
    
    newCourse.save
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