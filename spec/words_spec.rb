require('rspec')
require('words')

describe('Words') do

  before() do
    Words.clear()
  end

  describe('#word_name') do
    it("will tell you the name of the word") do
      new_word = Words.new({:word_name => "Word1"})
      expect(new_word.word_name()).to(eq("Word1"))
    end
  end

  describe('#definitions_list') do
    it("will return an empty array where it will hold all the definitions for the word") do
      new_word = Words.new({:word_name => "Word1"})
      expect(new_word.definitions_list()).to(eq([]))
    end
  end

  describe('.all') do
    it("will return an empty array which will hold all the words") do
      expect(Words.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the word to the all list') do
      new_word = Words.new({:word_name => "Word1"})
      new_word.save()
      expect(Words.all()).to(eq([new_word]))
    end
  end

  describe('.clear') do
    it('will clear all words from the list') do
      new_word = Words.new({:word_name => "Word1"}).save
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

end
