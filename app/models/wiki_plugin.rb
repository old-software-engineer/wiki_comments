require 'diff'
require 'enumerator'

class WikiPlugin
  has_many :pages, lambda {order('title')}, :class_name => 'WikiPageComment', :dependent => :destroy
end