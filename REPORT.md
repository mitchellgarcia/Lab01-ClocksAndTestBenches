# Lab 1 - Clocks and Test Benches  
**Name:** Mitchell Garcia  
**Email:** mgarc635@ucr.edu  

---

## Test Case Descriptions

### Test 1: SRC = 100 Hz, TICK = 2 Hz
This test verifies the clock multiplier producing a 2 Hz tick from a 100 Hz source.  
Over 1000 source clock cycles, the output tick should have a 50% duty cycle (500 high cycles) and 20 falling-edge transitions. The test passed.

### Test 2: SRC = 100 Hz, TICK = 5 Hz
This test verifies a 5 Hz tick from a 100 Hz source.  
Over 1000 source clock cycles, the output tick should have a 50% duty cycle and 50 falling-edge transitions. The test passed.

### Test 3: SRC = 100 Hz, TICK = 50 Hz
This test verifies the maximum tick frequency case.  
Over 1000 source clock cycles, the output tick maintains a 50% duty cycle and approximately 500 falling-edge transitions. The test passed.

---

## GTKWave Waveform Screenshot

Below is the waveform produced by the testbench simulation.  

![GTKWave Screenshot](lab01_161L.jpg)
