# test temporary_function runned through the game and tested players name.

require 'test/unit'
require_relative 'porrinha'
class PorrinhaTest2 < Test::Unit::TestCase # double-colon means sub-package, similar with sub-module
    def setup
        @str1 = "1234"
        @str2 ="asdf"
        @a = Porrinha.new
    end
    def test_temporary_function
        
        @a.temporary_function
        result1 = @a.player_1
        result2 = @a.player_2
        assert_equal(@str1, result1)
        assert_equal(@str2, result2)
    end
    
end