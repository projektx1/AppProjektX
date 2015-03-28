class DashboardController < ApplicationController

 before_action :authenticate_user!
  
  def index
  @user= current_user
  get_all_locaton
  get_all_reward
  end

  def update
  @user = current_user
  respond_to do |format|

  if(params[:user] && (params[:user][:location_ids] || params[:user][:reward_ids]))
	attributes = params.require(:user).permit(:location_ids =>[], :reward_ids =>[])
	   if 	@user.update(attributes)  
        format.html {  redirect_to dashboard_url, notice: 'Zapisano !' }
     else
       format.html {  redirect_to dashboard_url, notice: 'Nie zapisano !' }
     end
    if(!params[:user][:location_ids])
  	   @user.location.clear
     end
    if(!params[:user][:reward_ids])
        @user.reward.clear
      end
  else
   @user.location.clear
  @user.reward.clear
  format.html {  redirect_to dashboard_url, notice: 'Zapisano zmiany!' }
  end end
  end

  def get_all_locaton
  	@locations = Location.all.order('country, cityName')
  end

  def get_all_reward
    @rewards = Reward.all
  end
end
