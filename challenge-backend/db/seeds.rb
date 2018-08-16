# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instituicoes = Instituicoe.create([{ nome: 'Fundação Mineira de Educação e Cultura', notageral: 4 }])
Curso.create([{ instituicao: instituicoes.first.nome ,nome: 'Ciência da Computação', notacurso: 5, mediaaluno: 5 }])