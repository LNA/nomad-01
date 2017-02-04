class CreateHangouts < ActiveRecord::Migration[5.0]
  def change
    create_table :hangouts do |t|
      t.string :title
      t.string :city
      t.string :date

      t.timestamps
    end
  end
end
