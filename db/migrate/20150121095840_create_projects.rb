class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string   :project_name,       null: false
      t.string   :project_place,      null: false
      t.datetime :start_time,         null: false
      t.datetime :end_time,           null: false
      t.text     :content,            null: false
      t.string   :company_name,       null: false
      t.string   :company_owner_name, null: false

      t.timestamps 
    end
  end
end
