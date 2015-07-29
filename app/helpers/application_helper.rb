module ApplicationHelper

  def nav_link_to (click_text ,action, url , style)

    if action_name ==action
      return link_to(click_text,url, :class=> style)
    end

    return link_to(click_text,url)
  end
end
