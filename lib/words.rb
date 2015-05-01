class Words
  @@all_words = []
  attr_reader(:word_name)

  define_method(:initialize) do |attributes|
    @word_name = attributes[:word_name]
    @definitions_list = []
  end

  define_method(:definitions_list) do
    @definitions_list
  end
  
end
