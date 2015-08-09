class FundraisingController < ApplicationController


  def create
    FundraisingCampaign.create(
      :fundraising_campaign_name => params[:fundraising_campaign_name],
      :fundraising_campaign_goal => params[:fundraising_campaign_goal],
      :fundraising_campaign_description => params[:fundraising_campaign_description]
    )

    render :status => 200, :json => { :success => true, :info => "Load Successful"}
  end

  def read
    #fund = Fundraising.find(:all)
    funds = FundraisingCampaign.find_by_sql("SELECT * FROM fundraising_campaigns")

    render :json => funds, :except => [:id]
  end

  def update
    FundraisingCampaign.update(params[:fundraising_campaign_id], :fundraising_campaign_value => params[:fundraising_campaign_value])
    render :status => 200, :json => { :success => true, :info => "Update Successful"}
  end

  def destroy
    @fund = FundraisingCampaign.find(params[:fundraising_campaign_id])
    @fund.destroy
    @fund.save
    render :status => 200, :json => { :success => true, :info => "Update Successful"}
  end
end
