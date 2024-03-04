class Dropcomments < ActiveRecord::Migration[7.1]
  def change
    drop_table :comments, force: :cascade
  end
end
