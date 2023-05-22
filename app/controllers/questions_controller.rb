class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great'
    elsif @question.slice(-1) == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# for future referances another way of writing the code:
# @answer = if @question == 'I am going to work'
#             'Great'
#           elsif @question.slice(-1) == '?'
#             'Silly question, get dressed and go to work!'
#           else
#             "I don't care, get dressed and go to work!"
#           end
