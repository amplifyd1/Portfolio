class PagesController < ApplicationController
  def home
    @puppies = Puppy.all
  end

  def story
  end

end
