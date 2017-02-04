class CreateUserHangouts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_hangouts do |t|
      t.string :user
      t.string :hangout

      t.timestamps
    end
  end
end
