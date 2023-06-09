class UserQuizzesController < ApplicationController

  def index
    @user_quizzes = UserQuiz.all
  end

  def show
    @user_quiz = UserQuiz.find(params[:id])
    @quiz = @user_quiz.quiz
    @user_avatars = current_user.user_avatars.all
    @equiped_avatar = @user_avatars.where(equiped: true).first
  end

  def process_result
    @quiz = Quiz.find(params[:quiz_id])
    @user_quiz = UserQuiz.find_by(user: current_user, quiz: @quiz)
    @user_questions = UserQuestion.where(user: current_user, question: @quiz.questions)


    reward = @user_questions.sum do |user_question|
      user_question.done_flag == true ? user_question.question.reward : 0
    end
    current_user.balance += reward
    current_user.save
    count = @user_questions.count do |user_question|
      user_question.done_flag
    end
    @user_quiz.star = count
    @user_quiz.done_flag = true if count > 1
    @user_quiz.save!
  end
end
