class Words
  @@all_words = []


  define_method(:initialize) do |word_name|
    @word_name = word_name
    @definitions_list = []
    @id = @@all_words.length() + 1
  end

  define_method(:word_name) do
    @word_name
  end

  define_method(:definitions_list) do
    @definitions_list
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@all_words.each() do |word|
      if word.id().eql?(identification)
        found_word = word
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @definitions_list.push(definition)
  end

end
