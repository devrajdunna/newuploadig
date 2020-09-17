class CreateCrkpuramdata < ActiveRecord::Migration[5.0]
  def change
    create_table :crkpuramdata do |t|
      t.string :full_name
      t.string :care_of
      t.string :adhar
      t.string :mobile
      t.srting :bank_name
      t.string :ifsccode
      t.string :account_number

      t.timestamps
    end
  end
end
