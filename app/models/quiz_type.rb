class QuizType < ActiveRecord::Base
	has_many :questions
end
