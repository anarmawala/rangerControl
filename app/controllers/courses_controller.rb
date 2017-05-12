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
    redirect_to "/courses/#{newCourse.CID}"
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
    redirect_to "/courses/#{editCourse.CID}"
  end
  
  def delete
    @course = Course.find_by(:CID => params[:id])
    @course.destroy
    render 'index'
  end
end