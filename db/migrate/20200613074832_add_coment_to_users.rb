class AddComentToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coment, :string
  end
end
