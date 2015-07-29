class PageController < ApplicationController
  def home
  end

  def about_us
  end

  def contact_us


    @submitted = params["commit"] == nil ? false :true
    @form_error = false
    @error_msg = ""
    @name = params["name"]
    @email = params["email"]
    @question = params["question"]
    @newsletter = params["newsletter"] == "newsletter"
    gender = params["gender"]
    @product = params["product"]



    if @name == ""
      @error_msg += "must enter your name! <br />"
      flash.now['error'] = "must enter your name! "
      @form_error = true
    end

    if @email == ""
      @error_msg += "must enter your email! <br />"
      @form_error = true
    end



    @male = gender == "male"
    @female = gender == "female"




  end

  def newsletter
  end

  def blog
  end

  def calendar

   # @time = Time.now
   # @month = 1
   # @year = 2015



    @month = params['month'].to_i
    @year = params['year'].to_i

    date = Date.today

    if !(@month >= 1 &&  @month <= 12)
      @month = date.strftime("%m")
    end

    if !(@year <= 0)
      @year = date.strftime("%y")

    end

  end

  def articles
  end

  def login
  end

  def products

  end
end
