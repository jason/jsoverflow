class QuestionsController < ApplicationController
  
  def index
    @questions = Question.recent 
  end

  def new
    @question = Question.new
  end 

end
  