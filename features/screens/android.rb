# frozen_string_literal: true

require_relative 'android_screens'

class DroidScreens
  attr_accessor :tutorial, :register

  def initialize
    @tutorial = Android::Tutorial.new
    @register = Android::Register.new
  end
end
