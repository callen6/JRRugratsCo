class IssuesController < ApplicationController
	before_action :set_issue, only: [:show, :edit, :update, :destroy]

	def new
		@issue = Issue.new
	end

	def create
		@issue = Issue.new(issue_params)
		  if @issue.save
		    redirect_to @issue
		  else
		    render action: 'new'
		  end
	end

	def show
	end


	private
	def set_issue
		@issue = Issue.find(params[:id])
	end

	def issue_params
  params.require(:issue).permit(:user_id, :building_id, :contractor_ids, :description, :location, :status, :tenant_notes, :admin_notes, :cost, :completion_date )
	end
end
