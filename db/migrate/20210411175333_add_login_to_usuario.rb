class AddLoginToUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :login, :string
  end
end
