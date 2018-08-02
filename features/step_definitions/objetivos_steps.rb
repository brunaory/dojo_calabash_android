
Dado(/^que realize o login na neon pagamentos$/) do
  page(Login).acionar_entrar
  page(Login).inserir_email_cadastrado
  page(Login).fechar_teclado
  page(Login).acionar_entrar
  page(Login).inserir_senha
  #sleep 10
  page(Investimentos).entrar_investimentos
  page(Investimentos).trocar_onboarding
  page(Investimentos).acessar_proxima_tela
end

Quando(/^selecionar a opção objetivo$/) do
  page(Investimentos).selecionar_objetivo
  page(Investimentos).acessar_proxima_tela
end

E(/^informar todos os dados da aplicação$/) do
  page(Investimentos).inserir_valor
  page(Investimentos).acessar_proxima_tela
  page(Investimentos).inserir_valor_parcela
  page(Investimentos).acessar_proxima_tela
  page(Investimentos).data_fim
  page(Investimentos).acessar_proxima_tela
  page(Investimentos).inserir_nome
  page(Investimentos).acessar_proxima_tela
  page(Investimentos).inserir_imagem
  page(Investimentos).acessar_proxima_tela
end

Entao(/^vejo o objetivo criado$/) do
  page(Investimentos).criar_objetivo
end

Quando(/^estiver na tela de depósito de um objetivo$/) do
  #sleep 10
  page(Investimentos).selecionar_objetivo_criado
  #sleep 10
  page(Investimentos).selecionar_investir_resgatar
end

Quando(/^informar o valor maior ou igual que o valor minimo$/) do
  page(Investimentos).informar_valor_deposito
end

Entao(/^posso depositar o valor no porquinho$/)do
  page(Investimentos).confirmar_deposito
end

Quando(/^estiver na tela de resgate de um objetivo$/) do
  #sleep 10
  page(Investimentos).selecionar_objetivo_criado
  #sleep 15
  page(Investimentos).selecionar_investir_resgatar
  page(Investimentos).selecionar_resgate
end

Quando(/^informar o valor a ser resgatado$/) do
  page(Investimentos).informar_total
end

Entao(/^posso quebrar o porquinho para efetuar o resgate$/)do
  page(Investimentos).quebrar_porquinho
end
