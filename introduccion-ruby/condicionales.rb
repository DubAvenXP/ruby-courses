# condicionales

is_authenticated = false
role = :user

if role == :admin
  puts 'Welcome admin!'
elsif role == :user
  puts 'Welcome user!'
else
  puts 'Go away!'
end
