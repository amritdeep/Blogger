class CreateAuthorSessions < ActiveRecord::Migration
  def change
    create_table :author_sessions do |t|

      t.timestamps
    end
  end
end
