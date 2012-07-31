class UploadsController < ApplicationController

  def index
    @upload = Upload.new
  end

  def create
    @upload = Upload.create! params[:upload]
    flash[:success] = "Successfully uploaded #{@upload.file_file_name}."
    redirect_to uploads_url
  end

end
