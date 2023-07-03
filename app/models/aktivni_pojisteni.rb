class AktivniPojisteni < ApplicationRecord
  belongs_to :pojistenec
  belongs_to :pojisteni
  validates :castka, presence: { message: "musí být vyplněna" }
end
