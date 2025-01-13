# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'cipher' # This includes the code from cipher.rb

class TestCaesarCipher < Minitest::Test
  def test_cipher_with_lowercase
    result = ceasar_cipher('molweni apho kuni', 5)
    assert_equal 'rtqajsn fmuq pzsn', result
  end

  def test_cipher_with_uppercase
    result = ceasar_cipher('HELLO WORLD', 3)
    assert_equal 'KHOOR ZRUOG', result
  end

  def test_cipher_with_mixed_case
    result = ceasar_cipher('Hello World', 2)
    assert_equal 'Jgnnq Yqtnf', result
  end

  def test_cipher_with_non_alphabetic_characters
    result = ceasar_cipher('123! Hello, World!', 4)
    assert_equal '123! Lipps, Asvph!', result
  end

  def test_cipher_with_large_shift
    result = ceasar_cipher('abc', 29)
    assert_equal 'def', result
  end

  def test_cipher_with_negative_shift
    result = ceasar_cipher('def', -3)
    assert_equal 'abc', result
  end
end
