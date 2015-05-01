class Definition

  attr_reader(:make_definition)

  define_method(:initialize) do |attributes|
    @make_definition = attributes[:definition]
  end
end
