class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.integer :student_id
      t.string :social_media
      t.string :gender
      t.string :agreement
      t.string :course
      t.string :color
      t.string :profile_pass

      t.timestamps
    end
  end
end
