class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :instituicao
      t.string :nome
      t.float :notacurso
      t.float :mediaaluno

      t.timestamps
    end
  end
end
