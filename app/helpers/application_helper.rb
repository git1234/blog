module ApplicationHelper
  def markdown(text) 
  	options = [:hard_wrap, :filter_html, :autolink,  
      :no_intraemphasis, :fenced_code, :gh_blockcode] 
   # Markdown.new(text, extensions = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode])
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :filter_html => true, :autolink => true, :space_after_headers => true, :fenced_code => true, :hard_wrap => true)
	return markdown.render(text).html_safe
  end

  def session_id
  	@session = current_blog_user.id
  	session[:login] = @session
  end
end
