class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.date :date
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
