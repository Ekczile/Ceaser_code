require_relative "ceasercode.rb"
require "minitest/autorun"

class Test_for_Ceasercode < Minitest::Test
    def test_for_one
    assert_equal(1,1)
    end
    def test_for_encrypt
        assert_equal("f", tossed_salad("a"))
    end
    def test_for_words
        assert_equal("mjqu", tossed_salad("help"))
    end
    def test_for_two_words
        assert_equal("", tossed_salad("send backup"))
    end
end
