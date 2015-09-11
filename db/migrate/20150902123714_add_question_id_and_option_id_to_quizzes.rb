class AddQuestionIdAndOptionIdToQuizzes < ActiveRecord::Migration
  def change
  		add_column :quizzes, :question_id, :integer
  		add_column :quizzes, :option_id, :integer
  end
end
