
# Simulation parameters (Vector)
sim_params <- c(timestep = 0.1,
                endTime = 300)
# Model Parameters (List)
model_params <- list(vols      = c(vol = 1e-11),
                     init_conc = c(Cl_ext = 500,
                                   C = 200,
                                   C_c = 0,
                                   C_1 = 0,
                                   C_1c = 0,
                                   C_2 = 0,
                                   C_2c = 0,
                                   O = 0,
                                   O_c = 0,
                                   O_1 = 0,
                                   O_1c = 0,
                                   O_2 = 0,
                                   O_2c = 0))


# Read Ca timeseries
input_df <- read.table("C:/Users/Mai Thu Nguyen/Desktop/copasi/Copasi output/10_n_5e-8_h0_2e-7_h2_1e-6_h1_2_t0t1t2_6_ta_60_T1.txt", col.names = c("time", "Ca"))

input_df["Ca"] <- input_df["Ca"]*1e9


output <- sim_ano(input_df, sim_params, model_params)
output <- as.data.frame(output)


# Plot output
colnames(output) <- c("time", "calcium", "Cl_ext", "C", "C_c", "C_1", "C_1c", "C_2", "C_2c", "O", "O_c", "O_1", "O_1c", "O_2", "O_2c")
plot(output$time, output$calcium, col="blue", type="l", xlab="Time [s]", ylab="Concentration [nM]")
lines(output$time, output$Cl_ext, col="antiquewhite", type="l")
lines(output$time, output$C, col="red", type="l")
lines(output$time, output$C_c, col="orange", type="l")
lines(output$time, output$C_1, col="green", type="l")
lines(output$time, output$C_1c, col="cyan", type="l")
lines(output$time, output$C_2, col="violet", type="l")
lines(output$time, output$C_2c, col="black", type="l")
lines(output$time, output$O, col="gray", type="l")
lines(output$time, output$O_c, col="brown", type="l")
lines(output$time, output$O_1, col="pink", type="l")
lines(output$time, output$O_1c, col="salmon", type="l")
lines(output$time, output$O_2, col="mistyrose", type="l")
lines(output$time, output$O_2c, col="ivory", type="l")
legend("topright", legend=c("Calcium", "Cl_ext", "C", "C_c", "C_1", "C_1c", "C_2", "C_2c", "O", "O_c", "O_1", "O_1c", "O_2", "O_2c"),
                   col=c("blue", "antiquewhite", "red", "orange", "green", "cyan", "violet", "black", "gray", "brown", "pink", "salmon", "mistyrose", "ivory"),
                   lty=c(1,1))