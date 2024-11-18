require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
    def test_convert_hash_syntax
        old_syntax = <<~TEST
            {
            :name => 'Alice',
            :age => 20,
            :gender => :female
            }
        TEST
        expected = <<~TEST
            {
            name: 'Alice',
            age: 20,
            gender: :female
            }
        TEST
        assert_equal expected, convert_hash_syntax(old_syntax)
    end
end