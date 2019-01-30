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

  def price_per_square_foot
    (@price / area.to_f).round(2)
  end

  def rooms_sorts_by_area
    rooms.sort_by {|uniq_room| uniq_room.area(uniq_room.width, uniq_room.length)}
  end

  def rooms_by_category
    #Out of gas
    #find all unique categories and map to hash keys
    #fill hash values with corresponding unique category using rooms_from_category(unique_category)
  end
end
