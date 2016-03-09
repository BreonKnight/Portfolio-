module AdminsHelper
    def blog_posts
      Blog.all.order('updated_at DESC')
    end
end
