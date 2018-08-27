AdminUser.create!(email: 'admin@example.com',
                  password: 'password',
                  password_confirmation: 'password')

3.times do |n|
  client = Client.find_or_create_by(name: "Client ##{n}") do |client|
    client.status = n
  end

  break if n.eql? 2

  user = User.find_or_create_by(email: "user#{n}@mail.com") do |user|
    user.first_name = "John #{n}"
    user.last_name = "Barry #{n}"
    user.password = 'password'
    user.password = 'password'
    user.client = client
  end

  user.confirm
end
