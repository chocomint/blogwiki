module EntriesHelper
  def textile(text)
    RedCloth.new(h(text)).to_html
  end
end
