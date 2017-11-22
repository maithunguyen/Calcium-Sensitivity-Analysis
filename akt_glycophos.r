
# Simulation Parameters (Vector)
sim_params <- c(timestep = 0.1,
                endTime = 300)
# Model Parameters (List)
model_params <- list(vols      = c(vol = 5e-14),
                     init_conc = c(Prot_inact = 500,
                                   Prot_act = 0))

input_df <- read.table("C:/Users/Mai Thu Nguyen/Desktop/copasi/Copasi output/10_n_5e-8_h0_2e-7_h2_1e-6_h1_2_t0t1t2_6_ta_60_T1.txt", col.names = c("time", "Ca"))

input_df["Ca"] <- input_df["Ca"]*1e9


# Simulate model
output <- sim_glycphos(input_df, sim_params, model_params)
output <- as.data.frame(output)

# Plot output
colnames(output) <- c("time", "calcium", "Prot_inact", "Prot_act")
plot(output$time, output$calcium, col="blue", type="l", xlab="Time [s]", ylab="Concentration [nM]")
lines(output$time, output$Prot_inact, col="grey", type="l")
lines(output$time, output$Prot_act, col="red", type="l")
legend("topright", legend=c("calcium", "glycophos_inact", "glycophos_act"), col=c("blue", "grey", "red"), lty=c(1,1,1))
