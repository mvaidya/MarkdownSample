class HTMLWithCustomLinks < Redcarpet::Render::HTML
  # To change this template use File | Settings | File Templates.

  def link(link, title, content)
    if(link == 'INVITE_LINK')
      link = "http://www.readypulse.com/requestdemo"
    end

    "<a href='#{link}' title='#{title}'>#{content}</a>"
  end
end