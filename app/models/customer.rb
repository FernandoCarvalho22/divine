class Customer < ApplicationRecord
  validates_length_of :phone, is: 11, message: "Preencha corretamente o campo Telefone com 11 dígitos"
end
