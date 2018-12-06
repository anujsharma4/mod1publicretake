class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    # Article.author
    #returns an array of the article instance
    #that the author has written
    #iterate over the article arrays
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    #find articles that the author has written
    self.articles.collect do |article|
      article.magazine
    end
    #list out the magazines
  end

  def add_article(title, magazine)
    new_article = Article.new(self, title, magazine)
    return new_article
  end

  def find_specialties
    self.articles.collect do |article|
      article.magazine.category
    end
  end

end
