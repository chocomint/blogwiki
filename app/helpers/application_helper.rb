module ApplicationHelper
  def recent_entries(limit=30)
    Entry.newly.limit(limit)
  end
end
