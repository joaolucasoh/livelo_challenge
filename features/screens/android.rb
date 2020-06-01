# frozen_string_literal: true

require_relative 'android_screens'

class DroidScreens
  attr_accessor :tutorial, :register, :skipcode

  def initialize
    @tutorial = Android::Tutorial.new
    @register = Android::Register.new
    @skipcode = Android::SkipCode.new
  end
end
