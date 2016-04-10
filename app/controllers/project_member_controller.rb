class ProjectMemberController < ApplicationController
  unloadable
  def index
    @project = Project.find(params[:id])
    @issues = Issue.visible.where(@project.project_condition(Setting.display_subprojects_issues?))
    @members = @project.memberships.active.includes(:member_roles, :roles, :principal).to_a.sort
  end
end
