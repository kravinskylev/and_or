class Or
  def initialize
    @cache = []
  end

  ("a".."z").to_a.each do |letter|
  	  define_method("input_#{letter}") {|binary| @cache << binary}
    end

  def output
    @cache.include?(1) ? 1 : 0
  end
end
