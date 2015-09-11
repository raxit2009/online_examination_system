class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.integer :user_id
      t.integer :quiz_type_id

      t.timestamps null: false
    end
  end
end
