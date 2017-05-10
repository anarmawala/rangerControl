class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'barby'
  require 'barby/barcode/code_39'
  require 'barby/outputter/png_outputter'
  require 'barby/outputter/html_outputter'
  require 'chunky_png'
  
  
  #@barcode = Barby::Code39.new(params[:id]).to_html
  ##@barcodeview = Barby::HtmlOutputter.new(barcode).to_html
  #render 'home'
  
  
end
