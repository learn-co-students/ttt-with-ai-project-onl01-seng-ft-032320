class Board 
  attr_accessor :cells
  
  def initialize
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} " #putsing the instances cells
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end
  
  def position(input) #takes input as an arguement
    self.cells[input.to_i-1] #returns the value of cell
  end

  def full?
    self.cells.all?{ |token| token == "X" || token == "O"} #iterates over cells array to see if X or O value has been assigned to all elememts in the array
  end

  def turn_count
    self.cells.count{ |token| token == "X" || token == "O"} #counts the turns based on how many tokens on on the board
  end

  def taken?(input)
    #(position(input) == "X" || position(input) == "O")
    !(position(input) == " " || position(input) == "")
  end

  def valid_move?(input)
    input.to_i.between?(1, 9) && !taken?(input)
  end

  def update(input, player)
    self.cells[input.to_i-1] = player.token
  end

end