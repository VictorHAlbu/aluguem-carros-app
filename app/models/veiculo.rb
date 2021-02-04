class Veiculo < ApplicationRecord
  belongs_to :marca

  validates :nome, presence: true
end
