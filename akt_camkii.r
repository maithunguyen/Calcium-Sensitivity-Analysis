# Set rng seed for debugging tests
set.seed(1)

# Simulation parameters (Vector)
sim_params <- c(timestep = 0.1,
                endTime = 300)
# Model Parameters (List)
model_params <- list(vols      = c(vol = 5e-15),
                     init_conc = c(W_I = 40,
                                   W_B = 0,
                                   W_P = 0,
                                   W_T = 0,
                                   W_A = 0))

                                   
input_df <- read.table("C:/Users/Mai Thu Nguyen/Desktop/copasi/Copasi output/10_n_5e-8_h0_2e-7_h2_1e-6_h1_2_t0t1t2_6_ta_60_T1.txt", col.names = c("time", "Ca"))

input_df["Ca"] <- input_df["Ca"]*1e9
# Simulate model
output <- sim_camkii(input_df, sim_params, model_params)
output <- as.data.frame(output)

# Plot output
colnames(output) <- c("time", "calcium", "W_I", "W_B", "W_P", "W_T", "W_A")
plot(output$time, output$calcium, col="blue", type="l", xlab="Time [s]", ylab="Concentration [nM]")
lines(output$time, output$W_I, col="black", type = "l")
lines(output$time, output$W_B, col="red", type="l")
lines(output$time, output$W_P, col="green", type="l")
lines(output$time, output$W_T, col="cyan", type="l")
lines(output$time, output$W_A, col="orange", type="l")
legend("topright", legend=c("calcium", "W_I", "W_B", "W_P", "W_T", "W_A"),
                   col=c("blue", "black", "red", "green", "cyan", "orange"),
                   lty=c(1,1))
