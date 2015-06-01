class And
  def initialize
    @cache = []
  end

  ("a".."z").to_a.map do |action|
  	define_method("input_#{action}") {|binary| @cache << binary }
  end

  def output
    @cache.include?(0) ? 0 : 1
  end
end
