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
    render 'index'
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
    editCourse = Course.find_by(:CID => params[:courseID])
    
    editCourse.TID = params[:courseTID]
    editCourse.CType = params[:courseType]
    editCourse.CName = params[:courseName]
    
    editCourse.save
    render 'index'
  end
  
  def delete
    @course = Course.find_by(:CID => params[:id])
    @course.destroy
    render 'index'
  end
end