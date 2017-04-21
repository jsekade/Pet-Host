# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
carpanta, lopez, mortadelo = User.create!([
	
	{username: 'Carpanta', email: 'carpantas@gmail.com', password: '123456', password_confirmation: '123456', name: 'Carpanta', surname: 'Fernandez', telephone: '', street: 'Goya 15' , city: 'Madrid', postal_code: '', housing_type: 'Piso', housing_description: 'Piso de 90m2', welcome_pets: 'gato', price: '', availability: ''},
	{username: 'Super Lopez', email: 'superlopezs@gmail.com', password: '123456', password_confirmation: '123456', name: '', surname: '', telephone: '', street: '' , city: 'Barcelona', postal_code: '', housing_type: '', housing_description: '', welcome_pets: 'perro', price: '', availability: ''},
	{username: 'Mortadelo', email: 'mortadelos@gmail.com', password: '123456', password_confirmation: '123456', name: '', surname: '', telephone: '', street: '' , city: 'Madrid', postal_code: '', housing_type: '', housing_description: '', welcome_pets: 'gato', price: '', availability: ''},
	])

carpanta.pets.create!([{name: 'Boby', type_pet: 'Perro', breed: 'Bullterrier', age: '5', description_pet: 'dsdvsdvsdvsdvsdv', care: 'sdbvsdbsd'}])
lopez.pets.create!([{name: 'Piolo', type_pet: 'Ave', breed: 'Canario', age: '6', description_pet: 'sdvsdvsdv', care: 'dvwsrhbfdb'}])
mortadelo.pets.create!([{name: 'Filemon', type_pet: 'Gato', breed: 'Super', age: '12', description_pet: 'sdvsdvsdd', care: 'sdsdbvsdbs'}])

# Message.create({:body => "Prueba  1 2 3", :sender_id => 7, :receiver_id => 8 })
# Message.create({:body => "Prueba 4 5 6", :sender_id => 8, :receiver_id => 7 })
# Message.create({:body => "Prueba 7 8 9", :sender_id => 7, :receiver_id => 8 })
# Message.create({:body => "Prueba 10 11 12", :sender_id => 8, :receiver_id => 7 })
# Valoration.create({:opinion => "Prueba  valoraciones", :user_id => 1, :host_id => 2 })