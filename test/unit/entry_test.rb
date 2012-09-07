# vim:fileencoding=UTF-8
require 'test_helper'

class EntryTest < ActiveSupport::TestCase
   test "Bodyが空だと保存できない" do
     entry = Entry.new
     assert_equal false, entry.save
     assert_equal 1, entry.errors.size
   end
end
