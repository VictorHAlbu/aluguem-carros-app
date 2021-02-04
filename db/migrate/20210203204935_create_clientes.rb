class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :cep
      t.string :estado
      t.string :rua

      t.timestamps
    end
  end
end
