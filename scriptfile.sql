create table admin
	(
		admin_id serial primary key,
		username varchar(255),
		password varchar(255)
	);

create table brand
	(
		brand_id serial primary key,
		name varchar(255)
	);

create table model
	(
		model_id serial primary key,
		name varchar(255),
		model_year integer,
		model_brand serial references brand(brand_id)
	);

create table line
	(
		line_id serial primary key,
		name varchar(255),
		price integer,
		line_model serial references model(model_id)
	);

create table color
	(
		color_id serial primary key,
		color_line varchar(255),
		quantity integer,
		color_model serial references model(model_id)
	);

create table images
	(
		image_id serial primary key,
		image varchar(255)

	);

create table spec
	(
		specs_line serial references line(line_id),
		engine_cc varchar(255),
		transmission varchar(255),
		shifts varchar(255),
		type varchar(255), -- sedan, crossover, hatchback
		-- cylinders varchar(255),
		-- valves varchar(255),
		horsepower varchar(255),
		torque varchar(255),
		-- injection_type varchar(255),
		accelaration varchar(255), -- 0-100
		drive_mode varchar(255), --all_wheel, front_wheel, rear_wheel
		-- seats integer,
		-- doors integer,
		fuel_consumption number,
		fuel_tank varchar(255),
		-- ground_height integer, -- in mm
		fuel_type integer, -- 92, 95
		top_speed integer,
		number_of_airbags integer,
		electronic_seats boolean,
		abs boolean,
		ebd boolean,
		esp boolean,
		-- anti_theft boolean,
		-- immobilizer boolean,
		front_fog_light boolean,
		-- rear_fog_lights boolean,
		rims_size integer,
		-- rims_type varchar(255),
		-- rear_window_wipers boolean,
		-- headlights_controller boolean,
		auto_bend_mirrors boolean,
		mirror_signal boolean,
		headlights_type varchar(255), -- halogen, xenon, LED
		taillights_type varchar(255),
		spoiler boolean,
		parking_sensors boolean,
		sound_system varchar(255),
		cd_player boolean,
		aux integer,
		usb integer,
		bluetooth boolean,
		electric_windows varchar(255),
		-- remote_control boolean,
		driver_seat_control boolean,
		leather_seats varchar(255),
		start_stop boolean,
		panoramic_roof boolean,
		-- roof_type varchar(255),
		rear_camera boolean,
		screen varchar(255),
		-- touch_screen boolean,
		-- screen_description varchar(255),
		-- steering_wheel_position_control boolean,
		multifunction_steering_wheel boolean,
		cruise_control boolean,
		leather_steering_wheel boolean,
		leather_gear_shift boolean,
		-- center_lock boolean,
		front_wrist boolean,
		rear_wrist boolean,
		rain_sensor boolean,
		light_sensor boolean,
		boot_size integer





	);