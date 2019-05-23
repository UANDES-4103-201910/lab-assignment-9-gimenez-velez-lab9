class CreateUserTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tickets do |t|

      t.timestamps
    end
  end
end
