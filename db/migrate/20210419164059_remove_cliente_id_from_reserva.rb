class RemoveClienteIdFromReserva < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservas, :cliente_id
  end
end
