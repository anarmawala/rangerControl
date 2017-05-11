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
    
    newHomeroom.save
    redirect_to '/home2'
    
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
    redirect_to '/home2'
  end
  
  def delete
    
  end
end
