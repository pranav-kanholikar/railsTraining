class LoginsController < ApplicationController
  def index
  end

  def new
    @login =Login.new
  end

  def create
    @login=Login.new(login_params)
    if @login.save
      flash[:notice]= "Login sucessfully!!"
      redirect_to  movies_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def get_login

  end

  def user
    login = Login.find_by(email: params[:login][:email])
    puts params[:login][:password]
    puts params[:login][:email]
    puts login.password 
    if login.password == params[:login][:password]
      render 'index'
    else
      byebug
      render 'index'
    end
    # if  login.authenticate(params[:login][:password])
    #   # Log the user in and redirect to the user's show page.
    # else
    #   # Create an error message.
    #   render 'new'
    # end
  end

  def sign_in
    if @login.save
       Login.find params[:email, :password]
    redirect_to movie
    else 
      render 'sign_in'
    end
  end

private 
  def login_params
    params.require(:login).permit!
  end



end
