class QuestionsController < ApplicationController

 def ask
  @question = params[:question]
 end

 def answer
  @question = params[:question]


  if @question.present?
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  else
    @answer = "Please ask a question."
  end
end





end
