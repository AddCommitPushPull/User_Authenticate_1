class NotesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
    @account = Account.find(params[:id])
  
    if @account.update(account_params)
      redirect_to account_path
    else
      render :edit
    end
  end

  def edit
    @account = Account.find(params[:id])
  end
end
