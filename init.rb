Redmine::Plugin.register :redmine_project_member do
  name 'Redmine Project Member plugin'
  author 'Eivy'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/Eivy/redmine_project_member'
  author_url 'https://github.com/Eivy/'
  permission :project_member, { :project_member => :index }, :public => true
  menu :project_menu, :project_member, { :controller => 'project_member', :action => 'index' }, :caption => :label_member_plural, :before => :activity
end
