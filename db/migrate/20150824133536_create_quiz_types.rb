class CreateQuizTypes < ActiveRecord::Migration
  def change
    create_table :quiz_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
