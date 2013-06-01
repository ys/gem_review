class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :text
      t.string :gem_name

      t.timestamps
    end
  end
end
