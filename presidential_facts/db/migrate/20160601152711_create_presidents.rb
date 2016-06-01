class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :name
      t.text :text

      t.timestamps null: false
    end
  end
end
