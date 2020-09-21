module ApplicationHelper
  def active_link_to(name = nil, options = nil, html_options = {})
    html_options[:class] = "#{html_options[:class]} active".strip if current_page?(options)
    link_to(name, options, html_options)
  end
end
