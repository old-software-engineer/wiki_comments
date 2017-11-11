# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
post 'create_comments', :to => 'wiki_comments#create'
get 'test_method', :to => 'wiki_comments#test_method'