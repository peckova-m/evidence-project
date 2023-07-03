class Pojistenec < ApplicationRecord
	has_many :aktivni_pojistenis, dependent: :destroy
	has_many :pojistenis, through: :aktivni_pojistenis, dependent: :destroy
	validates :jmeno, length: { minimum: 2 }
	validates :prijmeni, length: { minimum: 2 }
	validates :telefon, uniqueness: true
end
