# Open the existing project
open_project D:/Personal/Documents/VivadoProjects/testregister.xpr

# Set the top module for simulation (replace with your testbench module name if different)
set_property top registers [current_fileset]

# Launch simulation
set_property target_simulator "XSim" [current_project]
    launch_simulation