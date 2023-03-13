# frozen_string_literal: true

class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_honky
    '¯\\(ツ)/¯'
  end
end
