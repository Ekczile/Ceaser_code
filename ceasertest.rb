require_relative "ceasercode.rb"
require "minitest/autorun"

class Test_for_Ceasercode < Minitest::Test
    def test_for_one
    assert_equal(1,1)
    end
    def test_for_encrypt
        assert_equal("f", tossed_salad("a", 5))
    end
    def test_for_words
        assert_equal("mjqu", tossed_salad("help", 5))
    end
    def test_for_two_words
        assert_equal("xjsi gfhpzu", tossed_salad("send backup", 5))
    end
    def test_for_two_words
        assert_equal("xjsi gfhpzu uqjfxj!", tossed_salad("send backup please!", 5))
    end
    def test_for_grammatical_special_character
        assert_equal(",\".?!-", tossed_salad(",\".?!-", 5))
    end
    def test_for_false_keys
        assert_equal("Please, use grammatical characters only", tossed_salad("\@##$%#%^$%*(_+=", 5))
    end
    def test_one_untossed
        assert_equal("a", untossed_salad("f", -5))
    end
    def test_for_words_unencrypted
        assert_equal("czgk", untossed_salad("help", -5))
    end
    def test_for_two_words
        assert_equal("send backup please!", untossed_salad("xjsi gfhpzu uqjfxj!", -5))
    end
    def test_for_long_message
        assert_equal("attack at first sunlight!", untossed_salad("fyyfhp fy knwxy xzsqnlmy!", -5))
    end
    def test_for_long_message_decoded
        assert_equal("fyyfhp fy knwxy xzsqnlmy!", tossed_salad("attack at first sunlight!", 5))
    end
    def test_for_uppercase
        assert_equal("MJQQT", tossed_salad("HELLO", 5))
    end
    def test_for_both_up_and_down_case
        assert_equal("YmNx Nx GtYm!,",tossed_salad("ThIs Is BoTh!,", 5))
    end
    def test_for_numbers
        assert_equal("6,7,8,9,0",tossed_salad("1,2,3,4,5", 5))
    end
    def test_ammount_of_solderies
        assert_equal("xjsi 65,5555 xtqinjwx",tossed_salad("send 10,0000 soldiers", 5))
    end
    def test_ammount_of_soldiers_decoded
        assert_equal("send 10,0000 soldiers",untossed_salad("xjsi 65,5555 xtqinjwx", -5))
    end
    def test_for_up_soldiers_decode
        assert_equal("Send 10,0000 soldiErS", untossed_salad("Xjsi 65,5555 xtqinJwX", -5))
    end
    def test_for_rotate_by_day
        assert_equal("ghi", tossed_salad("abc", 6))
    end
    def test_for_unrotate_by_day
        assert_equal("abc", untossed_salad("ghi", -6))
    end
    def test_for_30_days
        assert_equal("efg", tossed_salad("abc", 30))
    end
    def test_for_30_days_unencoded
    assert_equal("abc", untossed_salad("efg", -30))
    end
    def test_for_day_26
        assert_equal("fgh", tossed_salad("abc", 26))
    end
    def test_for_day_26_unencoded
        assert_equal("abc", untossed_salad("fgh", -26))
    end
    def test_for_day_26_and_time
        assert_equal("Bj sjji mjqu fy 67",tossed_salad("We need help at 12", 26))
    end
    def test_for_day_26_and_time_unencoded
        assert_equal("We need help at 12", untossed_salad("Bj sjji mjqu fy 67", -26))
    end
    def test_for_day_0
    assert_equal("bmfy mfuujsx?", tossed_salad("what happens?", 0))
    end
    def test_for_day_0_unencoded
        assert_equal("what happens?", untossed_salad("bmfy mfuujsx?", 0))
    end
    def test_day_for_non_integers
        assert_equal("bmfy mfuujsx stb?", tossed_salad("what happens now?", "asd"))
    end
end

