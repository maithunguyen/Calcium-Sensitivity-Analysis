
# Simulation Parameters (Vector)
sim_params <- c(timestep = 0.1,
                endTime = 300)
# Model Parameters (List)
model_params <- list(vols      = c(vol = 5e-14),
                     init_conc = c(Prot_inact = 5,
                                   Prot_act = 0),
                     params    = c(k_on = 0.02,
                                   k_off = 0.1))

# Read Ca timeseries
input_df <- read.table("C:/Users/Mai Thu Nguyen/Desktop/copasi/Copasi output/10_t0t1t2_2e-7_h1.txt", col.names = c("time", "Ca"))
input_df["Ca"] <- input_df["Ca"]*1e6*5*10

# Simulate model
output <- sim_calcineurin(input_df, sim_params, model_params)
output <- as.data.frame(output)

# Plot output
colnames(output) <- c("time", "calcium", "Prot_inact", "Prot_act")
plot(output$time, output$calcium,xlim = c(0,300), ylim = c(0,10), col="blue", type="l", xlab="Time [s]", ylab="Concentration [nM]")
lines(output$time, output$Prot_act, col="red", type="l")
lines(output$time, output$Prot_inact, col="black", type="l")
legend("topright", legend=c("calcium", "calcinerin_act", "calcinerin_inact"), col=c("blue", "red", "black"), lty=c(1,1))
