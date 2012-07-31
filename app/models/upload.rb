class Upload < ActiveRecord::Base
  
  has_attached_file :file

  attr_accessible :file

end
