get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end

post '/abuelita' do
  user_input = params[:user_input]
  #p user_input
  #esta parte resive la palabra del formulario
  #user_input es BYE entonces regresa el valor o cadena adios hijito 
  #con la direccion que le asignes  /?abuelita=adios hijito
  if user_input.include? "BYE"
    redirect to('/?abuelita=adios hijito')
  #si la palabra que ingresas es en mayusculas entonces la abuelita si escucha
  elsif user_input == user_input.upcase
    redirect to('/?abuelita=No, NO DESDE 1983')
  #y si no es en mayusculas no t escucha
  else
    redirect to('/?abuelita= NO TE ESCUCHO HIJO!')
  end    
end

