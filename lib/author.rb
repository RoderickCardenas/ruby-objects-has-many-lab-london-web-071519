require 'pry'
class Author
    attr_accessor :author, :posts, :name, :title

    @@all_posts = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        self.posts << post
        @@all_posts << post
    end

    def add_post_by_title(post)
        post = Post.new(post)
        post.author = self
        self.posts << post
        @@all_posts << post
    end

    def self.post_count
        @@all_posts.count
    end
end