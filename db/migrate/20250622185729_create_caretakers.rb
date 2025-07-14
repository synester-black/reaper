class CreateCaretakers < ActiveRecord::Migration[8.0]
  def change
    create_table :caretakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :category
      t.string :address

      t.timestamps
    end
  end
end
