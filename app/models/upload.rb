class Upload < ActiveRecord::Base
  
  has_attached_file :file, processors: [:upload_parser], styles: {original: {}}
  attr_accessible :file


end
