require 'html_with_custom_links'
module ApplicationHelper
  def markdown(text)
    renderer = HTMLWithCustomLinks.new(hard_wrap: true,
                                       filter_html: true, autolink: true,
                                       no_intraemphasis: true,
                                       fenced_code: true,
                                       gh_blockcode: true)

    Redcarpet::Markdown.new(renderer).render(text).html_safe
  end
end
