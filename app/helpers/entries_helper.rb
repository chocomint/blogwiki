module EntriesHelper
  def textile(text)
    RedCloth.new(escape_html_tags(text)).to_html
  end

  ALLOWED_TAGS = %w(pre code)
  def escape_html_tags(text)
    text.gsub(%r{<(\/?([!\w]+)[^<>\n]*)(>?)}) {|m| ALLOWED_TAGS.include?($2) ? "<#{$1}#{$3}" : "&lt;#{$1}#{'&gt;' unless $3.blank?}" }
  end
end
