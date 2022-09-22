rm left.uf2
rm right.uf2
rm -rf build/*
west init -l config
west update
west zephyr-export
GNUARMEMB_TOOLCHAIN_PATH=/Applications/ArmGNUToolchain/11.3.rel1/arm-none-eabi ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb west build -s zmk/app -d build/left -b adv360_left -- -DZMK_CONFIG=/Users/ccarter/github/zmk-config-adv360/config

GNUARMEMB_TOOLCHAIN_PATH=/Applications/ArmGNUToolchain/11.3.rel1/arm-none-eabi ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb west build -s zmk/app -d build/right -b adv360_right -- -DZMK_CONFIG=/Users/ccarter/github/zmk-config-adv360/config

cp build/left/zephyr/zmk.uf2 left.uf2
cp build/right/zephyr/zmk.uf2 right.uf2
