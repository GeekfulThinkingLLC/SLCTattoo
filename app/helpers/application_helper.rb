module ApplicationHelper
  def link_fa_to(icon_name, text, link)
    link_to content_tag(:i, text, :class => "fa fa-#{icon_name} fa-icon-padding"), link
  end

  def alerts
    alert = flash[:alert]
    error = flash[:error]
    notice = flash[:notice]

    if alert
      js add_gritter(alert, title: "Salt Lake Tattoo Co", sticky: false, image: :warning, time: 3000)
    elsif error
      js add_gritter(error, title: "Salt Lake Tattoo Co", sticky: false, image: :error)
    else notice
      js add_gritter(notice, title: "Salt Lake Tattoo Co", sticky: false, image: :success, time: 6000)
    end
 
  end
end
