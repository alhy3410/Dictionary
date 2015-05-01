require('rspec')
require('definition')

describe('Definitions') do

  describe('#make_definition') do
    it("will make a definition for the word") do
      new_definition = Definition.new({:definition => "This is definition 1"})
      expect(new_definition.make_definition()).to(eq("This is definition 1"))
    end
  end
end
