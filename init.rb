Redmine::Plugin.register :wiki_comments do

	name 'Wiki Comments plugin'
	author 'Mehakpal CodeGarage'
	description 'Plugin for wiki comments'
	version '0.0.1'
	url 'https://github.com/sharmaparas4444/wiki_comments'
	author_url 'https://github.com/sharmaparas4444'

	class WikiCommentsHookListener < Redmine::Hook::ViewListener
	 	render_on :wiki_comment_section_view, :partial => "comment_section/comment_section_view" 
	end

end
