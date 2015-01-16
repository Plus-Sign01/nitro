require 'spec_helper'

describe Project do
  before { @project = Project.new(project_name: "nitro", project_place: "oita", project_period: nil, content: "営業", project_owner: "plus_sign") }
  subject { @project }
  it { is_expected.to respond_to(:project_name) }
  it { is_expected.to respond_to(:project_place) }
  it { is_expected.to respond_to(:project_period) }
  it { is_expected.to respond_to(:content) }
  it { is_expected.to respond_to(:project_owner) }

  describe "when project_name is not present" do
    before { @project.project_name = "" }
    it { is_expected.to be_invalid }
  end
  describe "when project_place is not present" do
    before { @project.project_place = "" }
    it { is_expected.to be_invalid }
  end
  describe "when project_period is not present" do
    before { @project.project_period = "" }
    it { is_expected.to be_invalid }
  end
  describe "when content is not present" do
    before { @project.content = "" }
    it { is_expected.to be_invalid }
  end
  describe "when project_owner is not present" do
    before { @project.project_owner = "" }
    it { is_expected.to be_invalid }
  end
end

