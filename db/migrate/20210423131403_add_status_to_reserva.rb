class AddStatusToReserva < ActiveRecord::Migration[6.0]
  def change
    add_column :reservas, :status, :string
  end
end
