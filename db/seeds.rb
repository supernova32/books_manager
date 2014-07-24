# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(title: 'Libro 1')
Content.create(
    [
      {content: 'Introducción', book_id: 1},
      {content: 'Requisitos', book_id: 1}
    ])

Section.create(
  [
    {title: 'Motivacion', content_id: 1},
    {title: 'Reseña Historica', content_id: 1},
    {title: 'Soluciones Actuales', content_id: 1},
    {title: 'Objetivos', content_id: 1},

    {title: 'Hardware', content_id: 2},
    {title: 'Software', content_id: 2}
  ])

Subsection.create(
  [
    {title: 'Origen', section_id: 2},
    {title: 'Trabajos Preliminares', section_id: 2}
  ])
