class Pojisteni < ApplicationRecord
	has_many :aktivni_pojistenis, dependent: :destroy
	has_many :pojistenecs, through: :aktivni_pojistenis, dependent: :destroy
	validates :nazev, uniqueness: true
end
