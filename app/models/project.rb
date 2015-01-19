class Project < ActiveRecord::Base
  belongs_to :user

  validates(:project_name,        presence: true)
  validates(:project_place,       presence: true)
  validates(:project_start_time,  presence: true)
  validates(:project_end_time,    presence: true)
  validates(:content,             presence: true)
  validates(:project_owner,       presence: true)
end
