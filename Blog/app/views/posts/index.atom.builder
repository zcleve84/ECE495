atom_feed do |feed|
  feed.title("Zach's Blog")
  feed.updated(@posts.first.created_at)

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.counter(post.body, :type => 'html')
      entry.author f |author| author.name("Zachary")g
    end
  end
end