
current_design picorv32
create_clock -name clk -period 6.0 [get_ports clk]
set_input_delay -max 1.0 -clock [get_clocks clk] [get_ports {resetn mem_ready mem_rdata* irq* pcpi_wr pcpi_rd* pcpi_wait pcpi_ready}]
set_output_delay -max 1.0 -clock [get_clocks clk] [all_outputs]
set_clock_uncertainty 0.25 [get_clocks clk]
set_clock_transition 0.15 [get_clocks clk]
set_load 0.03 [all_outputs]
