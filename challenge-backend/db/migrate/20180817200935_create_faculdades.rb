class CreateFaculdades < ActiveRecord::Migration[5.2]
  def change
    create_table :faculdades do |t|
      t.string :nome
      t.float :notageral

      t.timestamps
    end
  end
end
