class CreateReservas < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas do |t|
      t.references :veiculo, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.integer :tempo_de_espera
      t.decimal :valor_alugado
      t.datetime :reservado_de
      t.datetime :reservado_ate
      t.boolean :pagamento_no_destino

      t.timestamps
    end
  end
end
