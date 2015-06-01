gem 'minitest', '~> 5.0'
require "minitest/autorun"
require "minitest/pride"
require_relative '../lib/AND'

class AndTest < Minitest::Test

  def setup
    @gate = And.new
  end

  def test_empty_gate
    assert_equal 1, @gate.output
  end

  def test_single_0
    @gate.input_a(0)
    assert_equal 0, @gate.output
  end

  def test_single_1
    @gate.input_a(1)
    assert_equal 1, @gate.output
  end

  def test_series_0
    @gate.input_a(1)
    @gate.input_f(1)
    @gate.input_z(1)
    @gate.input_d(0)
    assert_equal 0, @gate.output
  end

  def test_series_1
    @gate.input_a(1)
    @gate.input_f(1)
    @gate.input_z(1)
    @gate.input_d(1)
    assert_equal 1, @gate.output
  end
end
