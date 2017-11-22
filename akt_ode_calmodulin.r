# Define simulation parameters
sim_params <- c(timestep = 0.1,
                endTime = 300)
# Model Parameters (List)
model_params <- list(vols      = c(vol = 5e-14),
                     init_conc = c(Cal_off = 5,
                                   Cal_on = 0))
input_df <- read.table("C:/Users/Mai Thu Nguyen/Desktop/copasi/Copasi output/10_n_5e-8_h0_2e-7_h2_1e-6_h1_2_t0t1t2_6_ta_60_T1.txt", col.names = c("time", "Ca"))

input_df["Ca"] <- input_df["Ca"]*1e9

# Simulate Model
output <- calmodulin_detSim(input_df,
                            sim_params,
                            model_params)
# Plot output
plot(output$time, output$Ca, col = "blue", type = "l", xlab="Time [s]", ylab="Concentration [nM]")
lines(output$time, output$Cal_on, col = "red", type = "l")
lines(output$time, output$Cal_off, col = "black", type = "l")
legend("topright", legend=c("calcium", "ode_calmodulim_act", "ode_calmodulim_inact"), col=c("blue", "red", "black"), lty=c(1,1))
