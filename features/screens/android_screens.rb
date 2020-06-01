# frozen_string_literal: true

module Android
  class Tutorial
    include CommonsButtons
    attr_reader :tutorial

    def start_tutorial
      4.times do
        Appium::TouchAction.new.swipe(start_x: 0.8, start_y: 0.5, end_x: 0.2, end_y: 0.5, duration: 500).perform
      end
      tutorial_btn_done.click
    end
  end

  class Register
    attr_reader :register

    def register_screen?
      @btn_new = find_element(xpath: '//*[contains(@text, "I AM NEW")]')
      @btn_not_new = find_element(xpath: '//*[contains(@text, "I HAVE BEEN HERE")]')
      @btn_skip = find_element(xpath: '//*[contains(@text, "Skip")]')
    end

    def fields?
      @btn_new.click
      @email = find_element(xpath: '//*[contains(@text, "E-mail")]')
      @phone = find_element(xpath: '//*[contains(@text, "Phone number")]')
      @passw = find_element(xpath: '//*[contains(@text, "Password")]')
    end

    def happy_register
      @email.click
      @email.send_keys(Faker::Internet.email)
      @phone.click
      @phone.send_keys(Faker::PhoneNumber.cell_phone)
      @passw.click
      @passw.send_keys(Faker::Lorem.characters(number: 8))

      2.times do
        find_element(xpath: '//*[contains(@text, "CREATE ACCOUNT")]').click
      end
    end

    def send_token
      4.times do
        find_element(xpath: '//android.view.ViewGroup[6]/android.view.ViewGroup[1]/android.widget.TextView').click
      end
      hide_keyboard
      find_element(xpath: '//*[contains(@text, "SUBMIT CODE")]').click
      find_element(xpath: '//*[contains(@text, "Please wait . . .")]')
    end

    def categories_page?(categories, popular)
      sleep 3
      find_element(xpath: "//*[contains(@text, #{categories})]")
      find_element(xpath: "//*[contains(@text, #{popular})]")
    end
  end
end
