class RenameQuistionIdFromOptions < ActiveRecord::Migration
  def change
  	rename_column :options, :quistion_id, :question_id
  end
end
