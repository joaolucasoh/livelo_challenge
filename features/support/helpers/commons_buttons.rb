# frozen_string_literal: true

module CommonsButtons
  def tutorial_btn_done
    @tutorial_btn_done ||= find_element(xpath: '//*[contains(@text, "DONE")]')
  end
end

World(CommonsButtons)
