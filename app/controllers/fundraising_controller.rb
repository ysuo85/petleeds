class FundraisingController < ApplicationController
  def new
    @fund = Fundraising.new
  end

  def create
    @fund = Fundraising.create(
    :fundraising_campaign_goal => params[:fundraising_campaign_goal],
    :fundraising_campaign_value => params[:fundraising_campaign_value],
    :fundraising_campaign_description => params[:fundraising_campaign_description]
    )
    @fund.save
    render :status => 200, :json => { :success => true, :info => "Load Successful"}
  end

  def list
    @fund = Fundraising.find(:all)
  end

  def update
    Fundraising.update(params[:fundraising_campaign_id], :fundraising_campaign_value => params[:fundraising_campaign_value])
    render :status => 200, :json => { :success => true, :info => "Load Successful"}
  end

  def destroy
    @fund = Fundraising.find_by_id(params[:fundraising_campaign_id])
    @fund.destroy
    @fund.save
    render :status => 200, :json => { :success => true, :info => "Load Successful"}
  end
end
