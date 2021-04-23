class AddUsuarioToReserva < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservas, :usuario, foreign_key: true
  end
end
