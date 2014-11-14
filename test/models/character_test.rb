require "test_helper"

class CharacterTest < ActiveSupport::TestCase

  def character
    @character ||= Character.new
  end

  def test_valid
    assert character.valid?
  end

end
