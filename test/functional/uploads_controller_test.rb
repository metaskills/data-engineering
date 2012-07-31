require 'test_helper'

class UploadsControllerTest < ActionController::TestCase
  
  tests UploadsController

  describe '#index' do

    it 'loads the page' do
      get :index
      assert_select '#app'
    end
    
  end


end
