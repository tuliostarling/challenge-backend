class CreateInstituicoes < ActiveRecord::Migration[5.2]
  def change
    create_table :instituicoes do |t|
      t.string :nome
      t.float :notageral

      t.timestamps
    end
  end
end
