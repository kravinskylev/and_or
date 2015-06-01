class And
  def initialize
    @cache = []   # => []
  end

  ("a".."z").to_a.map do |action|                        # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  	define_method("input_#{action}") {|binary| @cache << binary }  # => :input_a, :input_b, :input_c, :input_d, :input_e, :input_f, :input_g, :input_h, :input_i, :input_j, :input_k, :input_l, :input_m, :input_n, :input_o, :input_p, :input_q, :input_r, :input_s, :input_t, :input_u, :input_v, :input_w, :input_x, :input_y, :input_z
  end                                                             # => [:input_a, :input_b, :input_c, :input_d, :input_e, :input_f, :input_g, :input_h, :input_i, :input_j, :input_k, :input_l, :input_m, :input_n, :input_o, :input_p, :input_q, :input_r, :input_s, :input_t, :input_u, :input_v, :input_w, :input_x, :input_y, :input_z]

  def output
    @cache.include?(0) ? 0 : 1  # => 0
  end
end
