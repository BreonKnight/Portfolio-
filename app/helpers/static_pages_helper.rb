module StaticPagesHelper
  def last_five_posts
    Blog.limit(5).order('id desc')
  end
  def blog_entry(blog)
    Blog.find_by_id(blog.id)
  end
end
