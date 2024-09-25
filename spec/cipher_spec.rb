require './lib/cipher'

RSpec.describe Cipher do
  let!(:cipher) { Cipher.new }

  describe 'instance methods' do
    it 'encrypts a string using the caesar cipher method and an input' do
      expect(cipher.caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end
  end
end
