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
      classesArray.push({
        "SP#{number}CID" => params[eval(":period#{number}CourseID")],
        "SP#{number}TID" => Course.find_by(:CID => params[eval(":period#{number}CourseID")]).TID,
        "SP#{number}Average" => params[eval(":period#{number}Average")],
        "SP#{number}Grade" => params[eval(":period#{number}Grade")],
      })
    end
    
    newStudent.SClasses = classesArray
    newStudent.save
    redirect_to '/home2'
  end
  
  def index
    render 'index'
  end
  
  def show
    @student = Student.find_by(:SID => params[:id])
    render 'showStudent'
  end
  
  def editForm
    @student = Student.find_by(:SID => params[:id])
    render 'editStudent'
  end
  
  def edit
    editStudent = Student.find_by(:SID => params[:studentID])
    editStudent.SID = params[:studentID]
    editStudent.SName = params[:studentName]
    editStudent.SAddress = params[:studentAddress]
    editStudent.SPhone = params[:studentPhone]
    editStudent.SEmail = params[:studentEmail]
    editStudent.SAbsences = params[:studentAbsences]
    editStudent.SAttendance = params[:studentAttendance]
    editStudent.STardies = params[:studentTardies]
    editStudent.SDetentions = params[:studentDetentions]
    editStudent.SUGPA = params[:studentUGPA]
    editStudent.SWGPA = params[:studentWGPA]
    editStudent.SSLHs = params[:studentSLHs]
    editStudent.SCredits = params[:studentCredit]
    editStudent.SOT = params[:studentOnTrack].to_i
    editStudent.SGrade = Homeroom.find_by(:HID => params[:studentHID]).HGrade
    editStudent.SDebt = params[:studentDebt]
    editStudent.HID = params[:studentHID]
    
    #Classes
     
    editClassesArray = []
    for number in 1..10 do 
      editClassesArray.push({
        "SP#{number}CID" => params[eval(":period#{number}CourseID")],
        "SP#{number}TID" => Course.find_by(:CID => params[eval(":period#{number}CourseID")]).TID,
        "SP#{number}Average" => params[eval(":period#{number}Average")],
        "SP#{number}Grade" => params[eval(":period#{number}Grade")],
      })
    end
    
    editStudent.SClasses = editClassesArray
    editStudent.save
    
    redirect_to '/home2'
  end
  
  def delete
    @student = Student.find_by(:SID => params[:id])
    @student.destroy
    render 'index'
  end
end