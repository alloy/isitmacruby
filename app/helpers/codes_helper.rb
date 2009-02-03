module CodesHelper
  def homepage_link_for code
    if code.has_homepage_url?
      "<a href=\"#{code.homepage}\">#{h(code.name)}</a>"
    else
      code.name    
    end
  end
  
  def working_icon_for code
    if code.works? 
      image_tag 'icons/tick.gif', :alt => 'All reports show this gem as working'
    else
      ''
    end
  end
  
  def large_working_icon_for code
    working_icon_for code # TODO: bigger icons
  end
  
  def show_comment_form_for comment
    return 'style="display:none"' if comment.nil? || comment.errors.size == 0
  end
end
