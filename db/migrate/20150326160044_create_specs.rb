class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      
      t.integer :line_id
      t.string :engine_cc
      t.string :transmission
      t.string :shifts
      t.string :type
      # t.string :cylinders
      # t.string :valves
      t.string :horsepower
      t.string :torque
      # t.string :injection_type
      t.string :accelaration
      t.string :drive_mode
      # t.integer :seats
      # t.integer :doors
      t.string :fuel_consumption
      t.string :fuel_tank
      # t.integer :ground_height
      t.integer :fuel_type
      t.integer :top_speed
      t.integer :number_of_airbags
      t.boolean :electronic_seats
      t.boolean :abs
      t.boolean :ebd
      t.boolean :esp
      # t.boolean :anti_theft
      # t.boolean :immobilizer
      t.boolean :front_fog_light
      # t.boolean :rear_fog_lights
      t.integer :rims_size
      # t.string :rims_type
      # t.boolean :rear_window_wipers
      # t.boolean :headlights_controller
      t.boolean :auto_bend_mirrors
      t.boolean :mirror_signal
      t.string :headlights_type
      t.string :taillights_type
      t.boolean :spoiler
      t.boolean :parking_sensors
      t.string :sound_system
      t.boolean :cd_player
      t.integer :aux
      t.integer :usb
      t.boolean :bluetooth
      t.string :electric_windows
      # t.boolean :remote_control
      t.boolean :driver_seat_control
      t.string :leather_seats
      t.boolean :start_stop
      t.boolean :panoramic_roof
      # t.string :roof_type
      t.boolean :rear_camera
      t.string :screen
      # t.boolean :touch_screen
      # t.string :screen_description
      # t.boolean :steering_wheel_position_control
      t.boolean :multifunction_steering_wheel
      t.boolean :cruise_control
      t.boolean :leather_steering_wheel
      t.boolean :leather_gear_shift
      # t.boolean :center_lock
      t.boolean :front_wrist
      t.boolean :rear_wrist
      t.boolean :rain_sensor
      t.boolean :light_sensor
      t.integer :boot_size

      t.timestamps null: false
    end
  end
end
