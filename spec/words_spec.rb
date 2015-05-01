require('rspec')
require('words')

describe('Words') do

  describe('#word_name') do
    it("will tell you the name of the word") do
      new_word = Words.new({:word_name => "Word1"})
      expect(new_word.word_name()).to(eq("Word1"))
    end
  end
end
