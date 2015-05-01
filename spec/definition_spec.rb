require('rspec')
require('definition')

describe('Definitions') do

  before() do
    Definition.clear()
  end


  describe('#make_definition') do
    it("will make a definition for the word") do
      new_definition = Definition.new({:make_definition => "This is definition 1"})
      expect(new_definition.make_definition()).to(eq("This is definition 1"))
    end
  end

  describe('.all') do
    it('will show an empty array where all definitions will be held') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save a definition to the array') do
      new_definition = Definition.new({:make_definition => "This is definition 1"})
      new_definition.save()
      expect(Definition.all()).to(eq([new_definition]))
    end
  end


end
