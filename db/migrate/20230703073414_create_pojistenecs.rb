class CreatePojistenecs < ActiveRecord::Migration[7.0]
  def change
    create_table :pojistenecs do |t|
      t.string :jmeno
      t.string :prijmeni
      t.date :datum_narozeni
      t.string :telefon
      t.string :email
      t.text :ulice
      t.text :mesto

      t.timestamps
    end
  end
end
