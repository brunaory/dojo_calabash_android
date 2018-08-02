#encoding: utf-8
#language: pt

Funcionalidade: Investimento objetivo
  Eu como cliente da neon pagamentos
  Quero ter um objetivo
  Para poder juntar uma grana

Contexto: Realizar o login
  Dado que realize o login na neon pagamentos

Cenário: Criar objetivo
  Quando selecionar a opção objetivo
  E informar todos os dados da aplicação
  Entao vejo o objetivo criado

Cenário: Realizar depósito
  Quando estiver na tela de depósito de um objetivo
  E informar o valor maior ou igual que o valor minimo
  Então posso depositar o valor no porquinho

Cenário: Resgatar objetivo
  Quando estiver na tela de resgate de um objetivo
  E informar o valor a ser resgatado
  Então posso quebrar o porquinho para efetuar o resgate
