class Words

  attr_reader(:word_name)

  define_method(:initialize) do |attributes|
    @word_name = attributes[:word_name]

  end
end
