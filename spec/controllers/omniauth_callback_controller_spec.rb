require 'spec_helper'

describe OmniauthCallbackController do

  describe "GET 'github'" do
    it "returns http success" do
      get 'github'
      response.should be_success
    end
  end

end
