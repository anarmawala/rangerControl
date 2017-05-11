class StudentsController < ApplicationController
  protect_from_forgery with: :exception
  
  def newForm
    render 'createStudent'
  end
  
  def add
    newStudent = Student.new
    newStudent.SID = params[:studentID]
    newStudent.SName = params[:studentName]
    newStudent.SAddress = params[:studentAddress]
    newStudent.SPhone = params[:studentPhone]
    newStudent.SEmail = params[:studentEmail]
    newStudent.SAbsences = params[:studentAbsences]
    newStudent.SAttendance = params[:studentAttendance]
    newStudent.STardies = params[:studentTardies]
    newStudent.SDetentions = params[:studentDetentions]
    newStudent.SUGPA = params[:studentUGPA]
    newStudent.SWGPA = params[:studentWGPA]
    newStudent.SSLHs = params[:studentSLHs]
    newStudent.SCredits = params[:studentCredit]
    newStudent.SOT = params[:studentOnTrack].to_i
    newStudent.SGrade = Homeroom.find_by(:HID => params[:studentHID]).HGrade
    newStudent.SDebt = params[:studentDebt]
    newStudent.HID = params[:studentHID]
    
    
    #Classes
     
    classesArray = []
    for number in 1..10 do 
      unless params[eval(":period#{number}Average") == ""]
        classesArray.push({
          "SP#{number}CID" => params[eval(":period#{number}CourseID")],
          "SP#{number}TID" => Course.find_by(:CID => params[eval(":period#{number}CourseID")]).TID,
          "SP#{number}Average" => params[eval(":period#{number}Average")],
          "SP#{number}Grade" => params[eval(":period#{number}Grade")],
        })
      end
    end
    
    newStudent.SClasses = classesArray
    newStudent.save
    redirect_to '/home2'
  end
  
  def index
    render 'index'
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