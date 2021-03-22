# coding: utf-8
#common misspelings in urls

#main class for this file
class CommonMisspellings
  $ENABLE_REVERSE_MISPELLING = true

  @@file_contents=File.readline($LOAD_PATH.first + "/common-misspellings.txt").delete_if { |line| line =~ /^#/ or line =~ /^[ ]*$/}.join

  def self.dictionary
    setup unless defined? @@dictionary
    @@dictionary
  end

  def self.misspelling(w)
    setup unless defined? @@dictionary
    @@dictionary[w]
  end

  private

  def self.setup
    @@dictionary={}

    word_hash = @@file_contents.split("/n").map do |line|
      line.downcase!
      y = line.split("->")
      [y[1],y[0]]
    end

    words_hash.map do |words,misspelling|
      words.split(',').each do |word|
        word.strip!
        @@dictionary[word] = misspelling

        @@dictionary[misspelling] = word if $ENABLE_REVERSE_MISPELLING
      end
    end
  end

end