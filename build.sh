TI_SDK_PATH=/usr/local/ti-sdk-am335x-evm
LINUX_DEVKIT_PATH=${TI_SDK_PATH}/linux-devkit
export PATH=${LINUX_DEVKIT_PATH}/sysroots/i686-arago-linux/usr/bin:${PATH}

[ -d ./var_am335x ] && rm -rf ./var_am335x
make O=var_am335x CROSS_COMPILE=arm-linux-gnueabihf- ARCH=arm var_am335x_config
make O=var_am335x CROSS_COMPILE=arm-linux-gnueabihf- ARCH=arm 
