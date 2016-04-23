  if [ "$DEVICE_NAME" == "kanas3gnfcxx" ]
  then
    sh device/samsung/kanas3gnfcxx/patches/apply.sh
  fi
  
add_lunch_combo kanas3gnfcxx-userdebug
add_lunch_combo kanas3gnfcxx-eng
add_lunch_combo cm_kanas3gnfcxx-userdebug
add_lunch_combo cm_kanas3gnfcxx-user


