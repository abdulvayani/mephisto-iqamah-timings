class CreateIqamahTiming < ActiveRecord::Migration
  def self.up
    create_table :iqamah_timings, :force => true do |t|
      t.string :name
      t.datetime :time
      t.boolean :is_maghrib
    end
  end

  def self.down
    drop_table :iqamah_timings
  end
end
