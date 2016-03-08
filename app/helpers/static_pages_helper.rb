module StaticPagesHelper
  def last_five_posts
    Blog.limit(5).order('id desc')
  end
end
