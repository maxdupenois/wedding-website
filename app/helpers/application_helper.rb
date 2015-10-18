module ApplicationHelper
  def link_class(controller_action)
    current = "#{controller_name}##{action_name}"
    current =~ /#{controller_action}/ ? 'selected' : ''
  end
end
