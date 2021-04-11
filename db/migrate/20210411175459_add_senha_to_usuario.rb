class AddSenhaToUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :senha, :string
  end
end
