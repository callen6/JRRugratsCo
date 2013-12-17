class IssuesController < ApplicationController
	before_action :set_issue, only: [:show, :edit, :update, :destroy]

	def new
		@issue = Issue.new
	end

	def create
		@issue = Issue.new(issue_params.merge(user_id: current_user.id))
		  if @issue.save
		    redirect_to @issue
		  else
		    render action: 'new'
		  end
	end

	def show
	end

	def update
  if @issue.update(issue_params)
    redirect_to @issue
  else
    render action: 'edit'
  end
end

	private
	def set_issue
		@issue = Issue.find(params[:id])
	end
# does not permit user_id to be injected
	def issue_params
 		params.require(:issue).permit(:description, :location, :tenant_notes)
	end
end
