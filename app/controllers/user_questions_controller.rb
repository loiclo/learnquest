class UserQuestionsController < ApplicationController
  def index
    @user_questions = UserQuestion.all
  end
  def show
    @user_question = UserQuestion.find(params[:id])
    @user_questions = UserQuestion.all
    @question = @user_question.question
    @next_question_id = @user_question.id + 1
    @next_question = UserQuestion.find(@next_question_id)
  end
  def check_answer

  end
end
