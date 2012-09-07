module EntriesHelper
  def textile(text)
    RedCloth.new(sanitize(text), [:filter_html, :filter_styles, :filter_classes, :filter_ids]).to_html
  end
end
