class CreatePojistenis < ActiveRecord::Migration[7.0]
  def change
    create_table :pojistenis do |t|
      t.string :nazev

      t.timestamps
    end
  end
end
