class AddThoughtToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :thought, foreign_key: true
  end
end
