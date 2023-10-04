class Classroom
  attr_accessor :label

  has_many :student

  def initialize(label)
    @label = label
  end
end
