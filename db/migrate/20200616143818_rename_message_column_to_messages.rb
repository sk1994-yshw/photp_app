class RenameMessageColumnToMessages < ActiveRecord::Migration[6.0]
  def change
    rename_column :messages, :message, :comment
  end
end
