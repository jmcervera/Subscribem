require_dependency "subscribem/application_controller"

module Subscribem
  class AccountsController < ApplicationController

  	def new
  		@account = Account.new
  		@account.build_owner
  	end

  	def create
  		@accounts = Account.create(account_params)
			flash[:notice] = 'Your account has been successfully created.'
			redirect_to subscribem.root_url
  	end

  	private
  	def account_params
  		params.require(:account).permit(:name)
  	end

  end
end
