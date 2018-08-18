class Faculdade < ApplicationRecord
    #scope :desc, -> { order('faculdades.notageral DESC') }
    has_many :cursos, dependent: :delete_all
end
