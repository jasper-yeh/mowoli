class AddScheduledDateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :scheduled_date, :DateTime
  end
end
