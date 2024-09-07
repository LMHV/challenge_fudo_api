class AccountsController < ApplicationController
    before_action :set_account, only: %i[ show update destroy ]
  
    # GET /accounts
    def index
      @accounts = Account.all
  
      render json: @accounts
    end
  
    # GET /accounts/1
    def show
      render json: @account
    end
  
    # POST /accounts
    def create
      existing_account = Account.find_by(email: account_params[:email], username: account_params[:username])
  
      if existing_account
        render json: { error: 'Account already exists' }, status: :unprocessable_entity
      else
          @account = Account.new(account_params)

        if @account.save
          token = self.class.encode_token({ account_id: @account.id })
          Rails.logger.error(@account.errors.full_messages.join(', '))
          UserMailer.welcome_email(@account).deliver_now
          render json: { 
            account: {
              id: @account.id,
              fullName: @account.fullName,
              email: @account.email,
              created_at: @account.created_at,
              updated_at: @account.updated_at
            },
            token: token 
          }, status: :created, location: @account
        else
          Rails.logger.error(@account.errors.full_messages.join(', '))
          render json: @account.errors, status: :unprocessable_entity
        end
      end
    end
  
  
  
    # PATCH/PUT /accounts/1
    def update
      if @account.update(account_params)
        render json: @account
      else
        render json: @account.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /accounts/1
    def destroy
      @account.destroy!
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_account
        @account = Account.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def account_params
        params.require(:account).permit(:email, :fullName, :age, :username, :country, :password)
      end
  end
