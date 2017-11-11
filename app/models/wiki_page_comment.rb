require 'diff'
require 'enumerator'

class WikiPageComment < WikiPage
  has_many :comments, lambda {order("created_on")}, :as => :commented, :dependent => :delete_all
end