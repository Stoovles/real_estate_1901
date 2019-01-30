class House

attr_reader :price, :address, :room, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @room = room
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

end
