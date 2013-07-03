class CreateSpeedies < ActiveRecord::Migration
  def change
    create_table :speedies do |t|
      t.datetime :first
      t.datetime :final
      t.string :useragent
      t.boolean :mobile
      t.string :ipaddress

      t.timestamps
    end
  end
end
