require_relative "ceasercode.rb"
require "minitest/autorun"

class Test_for_Ceasercode < Minitest::Test
    def test_for_one
    assert_equal(1,1)
    end
    def test_for_encrypt
        assert_equal("qnrgt", tossed_salad("limbo"))
    end
end
