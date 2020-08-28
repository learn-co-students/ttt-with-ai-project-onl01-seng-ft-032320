class Player
  attr_reader :token #token cannot be changed once it is initialized, it is only read

  def initialize(token)
    @token = token
  end

end