class PostController < ApplicationController

def posts
 @pst = Mposts.all
  if params["commit"] == "get"

    ps = Mposts.new(:userh => cookies[:usr], :text => params["figna"])
    ps = ps.save
    redirect_to post_posts_path
  end

end

end
