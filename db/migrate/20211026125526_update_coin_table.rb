class UpdateCoinTable < ActiveRecord::Migration[6.1]
  def change
    change_table :coins do |t|
      t.rename :coin_api_id, :coin_api_id
    end
  end
end
