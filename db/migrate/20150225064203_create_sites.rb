class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :urls
      t.text :comments

      t.timestamps
    end
  end
end
