class Article

  attr_accessor :name, :author, :magazine
  @@all = []

  def initialize(name, magazine, author)
    @name = name
    @author = author
    @magazine = magazine
    @@all << self

  end

  def self.all
    @@all
  end


end
