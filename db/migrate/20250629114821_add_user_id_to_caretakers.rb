class AddUserIdToCaretakers < ActiveRecord::Migration[8.0]
  def change
    add_column :caretakers, :user_id, :integer
    add_index :caretakers, :user_id
  end
end
