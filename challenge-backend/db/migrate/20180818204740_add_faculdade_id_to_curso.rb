class AddFaculdadeIdToCurso < ActiveRecord::Migration[5.2]
  def change
    add_reference :cursos, :faculdades, foreign_key: true, index: true, on_delete: :cascade
  end
end
