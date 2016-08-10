page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :asset_host
set :asset_host, 'http://workspace.nomaster.cc:4567'

activate :automatic_clowncar,
  :sizes => {
    :small => 600,
    :medium => 1200,
    :large => 2400,
  },
  :namespace_directory => %w(photos),
  :filetypes => [:jpg, :jpeg, :png]

configure :build do
  activate :minify_css
  activate :minify_javascript
  set :assed_host, 'https://nomaster.cc'
end
