require "test_helper"

class ParticipationTest < ActiveSupport::TestCase

  def participation
    @participation ||= Participation.new
  end

  def test_valid
    assert participation.valid?
  end

end
