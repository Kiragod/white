class LibController < ApplicationController

  def add
    @ad = true
    @lbr = true


    if params["commit"] == "Add"

      bk = Book.new(:avtor => params["avtor"], :razdel => params["list"]["ida"], :komment => params["komment"], :nazv => params["nazv"] )
      bk = bk.save

      @hg = ""
    end
  end

  def showall
    @lbr = true
    @shw = true
    @sw = Book.all
    @otf = ""
    if params["commit"] == "Search"
      @otf = " "
      @vibraz = params["list"]["ida"]

    end
    if params["commit"] == "Cancel"
      @otf = ""
      
    end

  end

  def odna  
    @lbr = true
    @odn = true
    @bookk = Book.find(params[:id])

  end


end
