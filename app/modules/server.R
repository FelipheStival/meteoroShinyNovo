# Global server
server = shinyServer(function(input, output, session) {
  
  # Autenticacao
  res_auth = secure_server(
    check_credentials = check_credentials(credenciais)
  )
  
  # Router
  router$server(input, output, session)
  
  # Javascript para alterar o title
  runjs(sprintf('$("title").html("%s");', APP_NAME))
  
  # Doencas Server
  doencaServer(input, output, session)
  
  # clima Service
  mapaServer(input,output,session)
  
  # Doenca Service
  experimentoServer(input,output,session)
  
  # Gerenciar Server
  gerenciarServer(input, output, session)
  
  
  
})