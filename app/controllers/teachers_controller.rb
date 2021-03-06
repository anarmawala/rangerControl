class TeachersController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    render 'createTeacher'
  end
  
  def add
    newTeacher = Teacher.new
    newTeacher.TID = params[:teacherID]
    newTeacher.TEmail = params[:teacherEmail]
    newTeacher.TName = params[:teacherName]
    newTeacher.TAdmin = params[:teacherAdmin]
    newTeacher.TPhoto = params[:teacherPhoto]
    
    if newTeacher.save
      redirect_to "/students"
    else
      redirect_to "/teachers/new"
    end
  end
  
  def index
    render 'index'
  end
  
  def show
    Teacher.find_by(:TID => params[:id])
  end
  
  def editForm
    @teacher = Teacher.find_by(:TID => params[:id])
    render 'editTeacher'
  end
  
  def edit
    editTeacher = Teacher.find_by(:TID => params[:teacherID])
    puts editTeacher
    
    editTeacher.TEmail = params[:teacherEmail]
    editTeacher.TName = params[:teacherName]
    editTeacher.TAdmin = params[:teacherAdmin]
    editTeacher.TPhoto = params[:teacherPhoto]
    
    editTeacher.save
    redirect_to '/students'
  end
  
  def delete
    @teacher = Teacher.find_by(:TID => params[:id])
    @teacher.destroy
    redirect_to '/students'
  end
end
