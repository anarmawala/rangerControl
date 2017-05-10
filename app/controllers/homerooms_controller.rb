class HomeroomsController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    
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
