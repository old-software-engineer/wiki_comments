class WikiCommentsController < ApplicationController
  unloadable

  def create
  	@project = Project.find(params[:project_id])
  	@wiki = @project.wiki 
    @wiki_pages_comments = WikiPageComment.where(wiki_id:@wiki.id)
  	@wiki_page = @wiki_pages_comments.find_by_title(params[:page_id])
  	puts "----#{@wiki_page.id}"
  	@user = User.find(params[:user_id])
    if @user.present? 
  		@comment = @wiki_page.comments.new(commented_type: "WikiPage", commented_id: @wiki_page.id, author_id: @user.id, comments: params[:wiki_page][:comment])
  		if @comment.save
        @wiki_pages_comments = @wiki_page.comments
        flash[:notice] = l(:notice_successful_create)
  			redirect_to :back
  		else
        @wiki_pages_comments = @wiki_page.comments
  			redirect_to project_wiki_page_path(@project,@wiki_page.id)
  		end	
  	else
      @wiki_pages_comments = @wiki_page.comments
  		redirect_to project_wiki_page_path(@project,@wiki_page.id)
  	end	
  end

end
