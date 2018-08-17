class AddFaculdadeIdToCurso < ActiveRecord::Migration[5.2]
  def change
    add_reference :cursos, :faculdades, index: true, foreign_key: true
  end
end
