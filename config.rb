page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :blog do |blog|
  blog.prefix = 'posts'
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = 'page/{num}'
end

activate :directory_indexes

configure :development do
  activate :livereload
end
