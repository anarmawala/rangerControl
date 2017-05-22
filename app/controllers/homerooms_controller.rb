class HomeroomsController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    render 'createHomeroom'
  end
  
  def add
    newHomeroom = Homeroom.new
    newHomeroom.HID = params[:homeroomID]
    newHomeroom.TID = params[:homeroomTID]
    newHomeroom.HNumber = params[:homeroomNumber]
    newHomeroom.HGrade = params[:homeroomGrade]
    
    if newHomeroom.save
      redirect_to "/students"
    else
      redirect_to "/homerooms/new"
    end
  end
  
  def index
    render 'index'
  end
  
  def show
    
  end
  
  def editForm
    @homeroom = Homeroom.find_by(:HID => params[:id])
    render 'editHomeroom'
  end
  
  def edit
    editHomeroom = Homeroom.find_by(:HID => params[:homeroomID])
    editHomeroom.TID = params[:homeroomTID]
    editHomeroom.HNumber = params[:homeroomNumber]
    editHomeroom.HGrade = params[:homeroomGrade]
    
    editHomeroom.save
    redirect_to '/students'
  end
  
  def delete
    @homeroom = Homeroom.find_by(:HID => params[:id])
    @homeroom.destroy
    redirect_to '/students'
  end
end
