rocker --network host --privileged --nvidia --x11 --user --name autoware \
  	--env="USER" \
	--env="ROS_DOMAIN_ID=64" \
	--env="ROS_LOCALHOST_ONLY=1" \
	--env="VEHICLE_ID=default" \
	--volume /dev \
	--volume $HOME/autoware_put_ws:$HOME/autoware \
	--volume $HOME/autoware_map:$HOME/autoware_map \
	--volume $HOME/autoware_data:$HOME/autoware_data \
	-- macnack/autoware-universe:pix-cuda-tutorial
