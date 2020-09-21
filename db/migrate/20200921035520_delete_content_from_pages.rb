class DeleteContentFromPages < ActiveRecord::Migration[6.0]
  def change
    remove_column :pages, :content, :string
  end
end
