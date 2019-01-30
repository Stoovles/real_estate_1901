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

  def rooms_from_category(category_input)
    rooms.find_all {|room| room.category == category_input}
  end

  def area
    array_of_areas = rooms.map {|uniq_room| uniq_room.area(uniq_room.width, uniq_room.length)}
    array_of_areas.sum
  end

end
