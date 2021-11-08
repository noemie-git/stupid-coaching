class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @answer = ''
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question]
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
