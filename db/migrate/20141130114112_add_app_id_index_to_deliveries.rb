# frozen_string_literal: true

class AddAppIdIndexToDeliveries < ActiveRecord::Migration
  def change
    add_index :deliveries, :app_id
  end
end
