class StudentsController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    
  end
  
  def add
    newStudent = Student.new
    newStudent.SID = params[:studentID]
    newStudent.SName = params[:studentName]
    newStudent.SAddress = params[:studentAddress]
    newStudent.SPhone = params[:studentPhone]
    newStudent.SEmail = params[:studentEmail]
    newStudent.SAbsences = params[:studentAbsences]
    newStudent.SAttendance = params[:studentAbsences]
    newStudent.STardies = params[:studentTardies]
    newStudent.SDetentions = params[:studentDetentions]
    newStudent.SUGPA = params[:studentUGPA]
    newStudent.WGPA = params[:studentWGPA]
    newStudent.SSLHs = params[:studentSLHs]
    newStudent.SCredits = params[:studentCredits]
    newStudent.SOT = params[:studentOnTrack]
    newStudent.SGrade = Homeroom.find_by(:HID => params[:studentHID]).HGrade
    newStudent.SDebt = params[:studentDebt]
    newStudent.HID = params[:studentHID]
    puts newStudent.inspect
    
    #Classes
    if params[:period1Average]
      newStudent.SClasses << {
        "SP1CID" => params[:period1CourseID],
        "SP1TID" => Course.find_by(:CID => params[:period1CourseID]).TID,
        "SP1Average" => params[:period1Average],
        "SP1Grade" => params[:period1Grade],
      }.to_s
    end
    
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