# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_04_001945) do

  create_table "administradors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nome"
    t.string "login"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "cep"
    t.string "estado"
    t.string "rua"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marcas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "veiculo_id", null: false
    t.bigint "cliente_id", null: false
    t.integer "tempo_de_espera"
    t.decimal "valor_alugado", precision: 10
    t.datetime "reservado_de"
    t.datetime "reservado_ate"
    t.boolean "pagamento_no_destino"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_reservas_on_cliente_id"
    t.index ["veiculo_id"], name: "index_reservas_on_veiculo_id"
  end

  create_table "veiculos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nome"
    t.string "cor"
    t.integer "qnt_passageiros"
    t.string "placa"
    t.decimal "valor", precision: 10
    t.bigint "marca_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["marca_id"], name: "index_veiculos_on_marca_id"
  end

  add_foreign_key "reservas", "clientes"
  add_foreign_key "reservas", "veiculos"
  add_foreign_key "veiculos", "marcas"
end
