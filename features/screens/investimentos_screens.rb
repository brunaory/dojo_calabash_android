class Investimentos < Calabash::ABase

  def entrar_investimentos
    wait_for_elements_exist(["* id:'avatar_plus_img_avatar'"], timeout: 50)
    touch("* id:'dashboard_txt_goals'")
  end

  def trocar_onboarding
    #wait_for_elements_exist(["* id:'base_onboarding_page_indicator'"], timeout: 15)
    pan("* id:'base_onboarding_page_indicator'", :left)
  end

  def acessar_proxima_tela
    touch("* id:'simple_button_txt_text'")
  end

  def selecionar_objetivo
      #wait_for_elements_exist(["'* text:'Objetivo'"], timeout: 15)
    touch("* text:'Objetivo'")
  end

  def inserir_valor
    #wait_for_elements_exist(["'* id:'create_goal_target_edt_value'"], timeout: 15)
    touch("* id:'create_goal_target_edt_value'")
    keyboard_enter_text("1000")
  end

  def inserir_valor_parcela
    #wait_for_elements_exist(["'* id:'create_portion_edt_value'"], timeout: 15)
    keyboard_enter_text("100")
  end

  def data_fim
    wait_for_elements_exist(["* id:'create_final_date_edt_date'"], timeout: 20)
  end

  def inserir_nome
    #wait_for_elements_exist(["'* id:'create_goal_name_label'"], timeout: 15)
    keyboard_enter_text("carro")
  end

  def inserir_imagem
    wait_for_elements_exist(["* id:'create_goal_image_img'"], timeout: 15)
    touch("* id:'create_goal_image_img'")
    touch("* id:'lblText'")
    touch("* id:'img_icon'")
  end

  def criar_objetivo
    perform_action('drag', 90, 0, 90, 50, 50)
    touch("* id:'simple_button_txt_text'")
  end

  def selecionar_objetivo_criado
    wait_for_elements_exist(["* id:'item_goals_img'"], timeout: 50)
    touch("* id:'item_goals_img'")
  end

  def selecionar_investir_resgatar
    wait_for_elements_exist(["* id:'goal_detail_ctn_cover_image'"], timeout: 30)
    touch("* id:'simple_button_txt_text'")
  end

  def informar_valor_deposito
    #ÃŸwait_for_elements_exist(["* id:'view_keyboard_btn_one'"])
    touch("* id:'view_keyboard_btn_one'")
    2.times do
      touch("* id:'simple_button_bg' index:9")
    end
    touch("* id:'simple_button_bg' index:10")
  end

  def confirmar_deposito
    #wait_for_elements_exist(["* id:'goal_confirm_deposit_img_lottie_sonar'"], timeout: 15)
    pan("* id:'goal_confirm_deposit_img_lottie_sonar'", :down)
    wait_for_elements_exist(["* id:'simple_button_txt_text'"], timeout: 30)
  end

  def selecionar_resgate
    wait_for_elements_exist(["* id:'goal_deposit_rescue_txt_rescue'"], timeout: 15)
    pan("* id:'goal_deposit_rescue_txt_rescue'", :left)
  end

  def informar_total
    wait_for_elements_exist(["* id:'simple_button_bg'"])
    touch("* id:'simple_button_bg' index:9")
    touch("* id:'simple_button_bg' index:11")
  end

  def quebrar_porquinho
    wait_for_elements_exist(["* id:'goal_confirm_rescue_animation_one'"])
    touch("* id:'goal_confirm_rescue_animation_one'")
    3.times do
      touch("* id:'goal_confirm_rescue_animation_two'")
    end
    wait_for_elements_exist(["* text:'Depositado'"], :timeout => 40)
  end


end
