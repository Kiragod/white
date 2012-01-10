class ServisController < ApplicationController

  def calc
  @clc = true  

    if params["commit"] == "="
      znak = params["one"].scan(/[*+|-]/)
      tmp = Array.new
      t = params["one"]

      for f in 0..t.length-1
        tmp << ""
      end

      j = 0
      jj = 0
      while j <= t.length-1
        if t[j] == "+" or t[j] == "-" or t[j] == "*"  or t[j] == "|"
          j = j+1
          jj = jj+1
        else
          tmp[jj] = tmp[jj].to_s << t[j].to_s
          j = j+1
        end 
      end
      tmp.delete("")

      @rez = 0
      if znak[0] == "*"  
        @rez = 1
      end 
      for i in 1..tmp.length-1
      
        if i == 1 
          @rez = tmp[0].to_i
        end
      

        if znak[i-1] == "+" 
          @rez = @rez + tmp[i].to_i
        end
       

        if znak[i-1] == "-" 
          @rez = @rez - tmp[i].to_i
        end


        if znak[i-1] == "*"
          @rez = @rez * tmp[i].to_i
        end

        if znak[i-1] == "|"
          @rez = @rez / tmp[i].to_i
        end     

      end
      
    end

    if params["commit"] == "+"
      @calc = params["one"] + "+"
    end

    if params["commit"] == "-"
      @calc = params["one"] + "-"
    end

    if params["commit"] == "*"
      @calc = params["one"] + "*"
    end

    if params["commit"] == "/"
      @calc = params["one"] + "|"
    end


    if params["commit"] == "1"
      @calc = params["one"] + "1"
    end
    if params["commit"] == "2"
      @calc = params["one"] + "2"
    end
    if params["commit"] == "3"
      @calc = params["one"] + "3"
    end
    if params["commit"] == "4"
      @calc = params["one"] + "4"
    end
    if params["commit"] == "5"
      @calc = params["one"] + "5"
    end
    if params["commit"] == "6"
      @calc = params["one"] + "6"
    end
    if params["commit"] == "7"
      @calc = params["one"] + "7"
    end
    if params["commit"] == "8"
      @calc = params["one"] + "8"
    end
    if params["commit"] == "9"
      @calc = params["one"] + "9"
    end
    if params["commit"] == "0"
      @calc = params["one"] + "0"
    end
    if params["commit"] == "  CE  "
      @calc = ""
    end
      
  end


  def alph
  @alp = true  

    t = params["txt"]
    if t.nil? 
      t = ""
    end
    t = t.split(/ /)
    t = t.sort
    @rezult = t.join(" ")
    
  end

end
