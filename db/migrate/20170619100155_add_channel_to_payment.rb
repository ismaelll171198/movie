class AddChannelToPayment < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :channel, :string
  end
end
