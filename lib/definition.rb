class Definition
  @@all_definitions = []
  attr_reader(:make_definition)

  define_method(:initialize) do |make_definition|
    @make_definition = make_definition
    @id = @@all_definitions.length() + 1
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_definition = nil
    @@all_definitions.each() do |definition|
      if definition.id().eql?(identification.to_i())
        found_definition = definition
      end
    end
    found_definition
  end
end
