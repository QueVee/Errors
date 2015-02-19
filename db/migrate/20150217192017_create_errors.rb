class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.string :title
      t.string :text

      t.timestamps null: false
    end
  end
end
