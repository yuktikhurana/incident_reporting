class Incident < ApplicationRecord
  belongs_to :school
  belongs_to :user, optional: true
  has_many :incident_types

  validates :school, :description, presence: true

  has_many_attached :images

  after_initialize :set_school

  delegate :name, to: :school, prefix: true

  private

  def set_school
    self.school ||= School.first
  end

end
