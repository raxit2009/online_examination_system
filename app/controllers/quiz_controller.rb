class QuizController < ApplicationController
	def home
		@quiz_type = QuizType.all
		session[:current] = 0
	end

	def start_quiz
		@current = session[:current]
		@questions = Question.where("quiz_type_id =?", params[:id])[@current]
		session[:last_question] = Question.where("quiz_type_id =?", params[:id]).count
	end

	def answer
		quizes = [:user_id => params[:user_id], :question_id => params[:question_id], :quiz_type_id => params[:quiz_type_id], :option_id => params[:option_id]]
		@a = Quiz.create(quizes)
		session[:current] += 1
		respond_to do |format|
			if session[:last_question] == session[:current]
				format.html { redirect_to root_path }
				session[:current] = 0
			else
				format.html { redirect_to start_quiz_path(params[:quiz_type_id]) }
			end
		end
	end
end
