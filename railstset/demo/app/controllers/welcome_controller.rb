class WelcomeController < ApplicationController
  def index
@tests = Test.all
  end 
end
