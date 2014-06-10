class ToDo

  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
    @status = :incomplete
  end

end