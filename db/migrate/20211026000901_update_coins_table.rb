class UpdateCoinsTable < ActiveRecord::Migration[6.1]
  def change
    change_table :coins do |t|
      t.rename :coin_id, :coin_api_id
    end
  end
end
