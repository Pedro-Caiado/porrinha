# test checking_input 

require 'test/unit'
require_relative 'porrinha'
class PorrinhaTest < Test::Unit::TestCase # double-colon means sub-package, similar with sub-module
    def setup
        @str1 = "1234"
        @str2 ="asdf"
        @a = Porrinha.new
    end
    def test_checking_input
        
        result1 = @a.checking_input(@str1)
        assert_equal(@str1, result1)
        result2 = @a.checking_input(@str2)
        assert_equal(@str2, result2)
    end
    
end
