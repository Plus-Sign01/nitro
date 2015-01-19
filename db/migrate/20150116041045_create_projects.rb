class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string    :project_name
      t.string    :project_place
      t.date_time :start_time
      t.date_time :end_time
      t.text      :content
      t.string    :project_owner

      t.timestamps null: false
    end
  end
end
