class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  accepts_nested_attributes_for :patient, allow_destroy: true
  # accepts_nested_attributes_for :physician, allow_destroy: true
end
