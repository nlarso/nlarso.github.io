page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page 'posts/*', layout: :blog_post_layout

activate :blog do |blog|
  blog.prefix = 'posts'
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = 'page/{num}'
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'master'
  deploy.build_before = true
end

activate :directory_indexes

activate :syntax
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

configure :development do
  activate :livereload
end
