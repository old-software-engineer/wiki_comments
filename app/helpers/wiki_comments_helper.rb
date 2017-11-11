module WikiCommentsHelper

	def self.show_comments(wiki,id)
		wiki_page = wiki.pages.find_by(title: id)
		WikiPageComment.find_by(title: wiki_page.title).try(:comments)
	end
end
