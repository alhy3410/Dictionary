class Definition
  @@all_definitions = []
  attr_reader(:make_definition)

  define_method(:initialize) do |attributes|
    @make_definition = attributes[:make_definition]
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

end
