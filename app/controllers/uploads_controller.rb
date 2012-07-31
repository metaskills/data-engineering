class UploadsController < ApplicationController

  def index
    @upload = Upload.new
    # @last_10_uploads = Upload.limit(10)
  end

  def create
    @upload = Upload.create! params[:upload]
    redirect_to uploads_url
  end

end
