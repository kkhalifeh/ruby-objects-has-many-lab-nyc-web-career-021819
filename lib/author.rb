require 'pry'
class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    # binding.pry
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    # binding.pry
    Post.all.count
  end


end
