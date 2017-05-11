class CoursesController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    render 'createCourse'
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
    render 'index'
  end
  
  def show
    
  end
  
  def editForm
    @course = Course.find_by(:CID => params[:id])
    render 'editCourse'
  end
  
  def edit
    
  end
  
  def delete
    
  end
end