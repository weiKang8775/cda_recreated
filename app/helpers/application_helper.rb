module ApplicationHelper
  def active_link_to(name = nil, options = nil, html_options = {})
    html_options[:class] = "#{html_options[:class]} active".strip if current_page?(options)
    link_to(name, options, html_options)
  end

  def get_title
    if current_page?(root_path)
      return "Free Ultimate Guide to CDA Interviews: Tips & Proven Strategies to Help You Prepare & Ace Your CDA Structured Interview"
    elsif current_page?(contact_us_path)
      return "Contact Us"
    end
  end

  # def get_dynamic_edit
  #   if current_page?(root_path)
  #     return link_to "Edit Page", edit_page_path(Page.first)
  #   elsif current_page?(contact_us_path)
  #     return link_to "Edit Page", edit_page_path(Page)

end
