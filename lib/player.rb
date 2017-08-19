class Player

attr_accessor :hp
attr_reader :name
  def initialize(name)
    @hp = 100
    @name = name
  end

  def damage
    @hp-=20
  end

end
