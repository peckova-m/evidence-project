class CreateAktivniPojistenis < ActiveRecord::Migration[7.0]
  def change
    create_table :aktivni_pojistenis do |t|
      t.belongs_to :pojistenec, null: false, foreign_key: true
      t.belongs_to :pojisteni, null: false, foreign_key: true
      t.integer :castka

      t.timestamps
    end
  end
end
