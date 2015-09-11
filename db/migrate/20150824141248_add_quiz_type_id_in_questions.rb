class AddQuizTypeIdInQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :quiz_type_id, :integer
  end
end
