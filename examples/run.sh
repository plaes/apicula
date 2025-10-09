#yosys -D LEDS_NR=6 -D OSC_TYPE_OSC -D INV_BTN=1 -D CPU_FREQ=27 -D BAUD_RATE=115200 -D NUM_HCLK=5 -D RISCV_MEM_88K -l synth_yosys-0.57.log -p "read_verilog dsp-mult36x36.v; synth_gowin -json synth.json -family gw2a"
#~/code/yosys/yosys -D LEDS_NR=6 -D OSC_TYPE_OSC -D INV_BTN=1 -D CPU_FREQ=27 -D BAUD_RATE=115200 -D NUM_HCLK=5 -D RISCV_MEM_88K -l synth_yosys-dsp.log -p "read_verilog dsp-mult36x36.v; synth_gowin -json synth-dsp.json -family gw2a"

# 
#NEXTPNR=yowasp-nextpnr-himbaechel-gowin
NEXTPNR=~/code/nextpnr/build/nextpnr-himbaechel

$NEXTPNR --json synth-dsp.json --write xxx.fs --device GW1NR-LV9QN88PC6/I5 --vopt family=GW1N-9C --vopt cst=tangnano9k.cst
