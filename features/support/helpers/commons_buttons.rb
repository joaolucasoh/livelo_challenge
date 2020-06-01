# frozen_string_literal: true

module CommonsButtons
  def tutorial_btn_done
    @tutorial_btn_done ||= find_element(xpath: '//*[contains(@text, "DONE")]')
  end

  def btn_im_new
    @btn_im_new ||= find_element(xpath: '//*[contains(@text, "I AM NEW")]')
  end

  def btn_im_not_new
    @btn_im_not_new ||= find_element(xpath: '//*[contains(@text, "I HAVE BEEN HERE")]')
  end

  def btn_skip
    @btn_skip ||= find_element(xpath: '//*[contains(@text, "SKIP")]')
  end

  def email
    @email ||= find_element(xpath: '//*[contains(@text, "E-mail")]')
  end

  def phone
    @phone ||= find_element(xpath: '//*[contains(@text, "Phone number")]')
  end

  def passw
    @passw ||= find_element(xpath: '//*[contains(@text, "Password")]')
  end
end

World(CommonsButtons)
