# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create(
  [
    {
      password: 'haslo123',
      user_type: 'Tutor',
      username: 'Olaf'
    },
    {
      password: 'haslo123',
      user_type: 'Tutor',
      username: 'Amir'
    },
    {
      password: 'haslo123',
      user_type: 'Tutor',
      username: 'Krystyna'
    },
    {
      password: 'haslo123',
      user_type: 'Tutor',
      username: 'Gabriela'
    },
    {
      password: 'haslo123',
      user_type: 'Tutor',
      username: 'Krystyna'
    },
    {
      password: 'haslo123',
      user_type: 'Student',
      username: 'Malwina'
    },
    {
      password: 'haslo123',
      user_type: 'Student',
      username: 'Krzysztof'
    },
    {
      password: 'haslo123',
      user_type: 'Student',
      username: 'Piotr'
    },
  ]
)

tutors = Tutor.create(
  [
    {
      name: 'Amir Walczak',
      degree: 'mgr',
      description: 'opis',
      email: 'a@b.c',
      location: 'Wroclaw',
      is_remote: 'true',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      subject: 'matematyka',
      user_id: '1'
    },
    {

      name: 'Olaf Kowalski',
      degree: 'mgr',
      description: 'opis',
      email: 'a@b.c',
      location: 'Warszawa',
      is_remote: 'true',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      subject: 'fizyka',
      user_id: '2'
    },
    {

      name: 'Krystyna Jakubowska',
      degree: 'mgr',
      description: 'opis',
      email: 'a@b.c',
      location: 'Warszawa',
      is_remote: 'true',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      subject: 'matematyka',
      user_id: '3'
    },
    {

      name: 'Gabriela Borowska',
      degree: 'lic.',
      description: 'opis',
      email: 'a@b.c',
      location: 'Wroclaw',
      is_remote: 'true',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      subject: 'fizyka',
      user_id: '4'
    },
    {

      name: 'Krystyna Kowalczyk',
      degree: 'mgr',
      description: 'opis',
      email: 'a@b.c',
      location: 'Wroclaw',
      is_remote: 'false',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      subject: 'matematyka',
      user_id: '5'
    }
  ]
)

students = Student.create(
  [
    {
      name: 'Malwina Laskowska',
      email: 'a@b.c',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      user_id: '6'
    },
    {
      name: 'Krzysztof Kowalski',
      email: 'a@b.c',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      user_id: '7'
    },
    {
      name: 'Piotr Mazurek',
      email: 'a@b.c',
      phone_number: '123456789',
      start_date: '2012-04-23T18:25:43.511Z',
      user_id: '8'
    }
  ]
)

reviews = Review.create(
  [
    {
      creation_date: '2012-04-23T18:25:43.511Z',
      review: 'opinia 1',
      tutor_id: '1',
      student_id: '1'
    },
    {
      creation_date: '2012-04-23T18:25:43.511Z',
      review: 'opinia 2',
      tutor_id: '1',
      student_id: '2'
    },
    {
      creation_date: '2012-04-23T18:25:43.511Z',
      review: 'opinia 3',
      tutor_id: '2',
      student_id: '3'
    }
  ]
)

klasses = Klass.create(
  [
    {
      klass_date: '2012-04-23T18:25:43.511Z',
      status: 'oczekujace',
      subject: 'matematyka',
      subject_level: 'poziom podstawowy',
      tutor_id: '1',
      student_id: '1'
    },
    {
      klass_date: '2012-04-23T18:25:43.511Z',
      status: 'oczekujace',
      subject: 'matematyka',
      subject_level: 'poziom rosrzezony',
      tutor_id: '1',
      student_id: ''
    },
    {
      klass_date: '2012-04-23T18:25:43.511Z',
      status: 'oczekujace',
      subject: 'matematyka',
      subject_level: 'poziom podstawowy',
      tutor_id: '2',
      student_id: ''
    }
  ]
)
