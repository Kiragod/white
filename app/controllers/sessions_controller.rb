class SessionsController < ApplicationController

def login

  if params["commit"] == "Войти"

   @t = User.find_by_login(params["login"])
    if @t.pass ==  params["password"]

      cookies[:usr] =  params["login"]
      redirect_to root_path  
    end

  end

end


def logout

  cookies.delete(:usr)
  redirect_to root_path    
end

def signup
  if params["commit"] == "signup"

    us = User.new(:login => params["login"], :email => params["email"], :pass => params["password"] )
    us = us.save

    cookies[:usr] =  params["login"]

    redirect_to root_path  
flash[:notice] = "Thanks for your comment!"  
  end
end


end
