class CreateCrkpdata < ActiveRecord::Migration[5.0]
  def change
    create_table :crkpdata do |t|
      t.string :name
      t.string :adhar
      t.string :mobile

      t.timestamps
    end
  end
end
