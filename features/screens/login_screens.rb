class Login < Calabash::ABase

  def acionar_entrar
    wait_for_elements_exist(["* id:'simple_button_txt_text'"], timeout: 30)
    touch("* id:'simple_button_txt_text'")
  end

  def inserir_email_cadastrado
    wait_for_elements_exist(["* id:'login_email_txt'"], timeout: 30)
    touch("* id:'login_email_txt'")
    keyboard_enter_text("le.brunaory@gmail.com")
  end

  def fechar_teclado
    hide_soft_keyboard
  end

  def inserir_senha
    wait_for_elements_exist(["* id:'view_keyboard_btn_one'"], timeout: 20)
    5.times do
      touch("* id:'view_keyboard_btn_one'")
    end
    touch("* id:'view_keyboard_btn_two'")
  end
end
