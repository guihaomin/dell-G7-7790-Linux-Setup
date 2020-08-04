echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo
for x in /sys/devices/system/cpu/cpu[0-9]/cpufreq/;do 
  echo 4500000 > $x/scaling_max_freq
done
for x in /sys/devices/system/cpu/cpu1[0-1]/cpufreq/;do 
  echo 4500000 > $x/scaling_max_freq
done

