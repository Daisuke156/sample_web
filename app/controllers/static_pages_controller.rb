class StaticPagesController < ApplicationController
  
  def home
    @content = Faker::Movie.quote
    @forSlide1 = Faker::Games::Pokemon.name
    @forSlide2 = Faker::Games::Pokemon.name
    @forSlide3 = Faker::Games::Pokemon.name
  end
  
  def about
  end
  
  def event
  end
  
  def test
  end
  
end
