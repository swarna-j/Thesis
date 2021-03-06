# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft_dsub_64ns_64ndEe.v
  /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft_dmul_64ns_64neOg.v
  /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft_dadd_64ns_64ncud.v
  /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft_dadddsub_64nsbkb.v
  /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft.v
}
read_ip -quiet /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dmul_4_max_dsp_64/fft_ap_dmul_4_max_dsp_64.xci
set_property is_locked true [get_files /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dmul_4_max_dsp_64/fft_ap_dmul_4_max_dsp_64.xci]

read_ip -quiet /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dadd_3_full_dsp_64/fft_ap_dadd_3_full_dsp_64.xci
set_property is_locked true [get_files /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dadd_3_full_dsp_64/fft_ap_dadd_3_full_dsp_64.xci]

read_ip -quiet /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dsub_3_full_dsp_64/fft_ap_dsub_3_full_dsp_64.xci
set_property is_locked true [get_files /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dsub_3_full_dsp_64/fft_ap_dsub_3_full_dsp_64.xci]

read_ip -quiet /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dadddsub_3_full_dsp_64/fft_ap_dadddsub_3_full_dsp_64.xci
set_property is_locked true [get_files /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/project.srcs/sources_1/ip/fft_ap_dadddsub_3_full_dsp_64/fft_ap_dadddsub_3_full_dsp_64.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft.xdc
set_property used_in_implementation false [get_files /home/jsk_027/Thesis/machsuite_fft_workspace/solution2/impl/verilog/fft.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top fft -part xc7z020clg484-1 -no_iobuf -mode out_of_context


write_checkpoint -force -noxdef fft.dcp

catch { report_utilization -file fft_utilization_synth.rpt -pb fft_utilization_synth.pb }
