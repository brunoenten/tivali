class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats, id: :uuid do |t|
      t.text :creator, null: false
      t.text :chip_serial
      t.text :main_name
      t.binary :main_picture
      t.jsonb :document

      t.timestamps
    end
  end
end
