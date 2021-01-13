class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @prototypes = @user.prototypes
    end
  
    def update
        if current_user.update(user_params)
            redirect_to root_path
          else
            render :show
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :email)
    end

end