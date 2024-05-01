# ROM source patches
color="\033[0;32m"
end="\033[0m"
echo -e "${color}Applying patches${end}"
sleep 1

# Clone kernel
git clone https://github.com/Rhodep-Descommon/kernel_motorola_msm-5.4 kernel/motorola/sm6375

# Clone vendor
git clone https://github.com/Rhodep-Descommon/android_vendor_proprietary_rhodep -b 14 vendor/motorola/rhodep

# Clone common trees

git clone https://github.com/Rhodep-Descommon/android_device_motorola_sm6375-common device/motorola/sm6375-common
git clone https://github.com/Rhodep-Descommon/proprietary_vendor_motorola_sm6375-common vendor/motorola/sm6375-common

# Clone hardware
git clone https://github.com/LineageOS/android_hardware_motorola hardware/motorola
git clone https://github.com/LineageOS/android_system_qcom system/qcom


git clone https://github.com/Roynas-Android-Playground/hardware_samsung-extra_interfaces -b lineage-21 hardware/samsung-ext/interfaces
