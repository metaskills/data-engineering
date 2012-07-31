module Paperclip
  class UploadParser < Processor

    def make
      UploadStringParser.parse File.read(file.path)
      file
    end

  end
end