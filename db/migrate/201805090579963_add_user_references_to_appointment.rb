class AddUserReferencesToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :user, foreign_key: true
  end
end
