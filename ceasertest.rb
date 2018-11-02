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
        assert_equal("xjsi gfhpzu", tossed_salad("send backup"))
    end
    def test_for_two_words
        assert_equal("xjsi gfhpzu uqjfxj!", tossed_salad("send backup please!"))
    end
    def test_for_grammatical_special_character
        assert_equal(",\".?!-", tossed_salad(",\".?!-"))
    end
    def test_for_false_keys
        assert_equal("didn't work", tossed_salad("\@##$%#%^$%*(_+="))
    end
    def test_one_untossed
        assert_equal("a", untossed_salad("f"))
    end
    def test_for_words_unencrypted
        assert_equal("help", untossed_salad("mjqu"))
    end
end
