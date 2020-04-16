class PagesController < ApplicationController
  def index
    @tests = Test.all
  end
end
