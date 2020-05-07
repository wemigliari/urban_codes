### Model B Interactive Nets http://christophergandrud.github.io/networkD3/

install.packages('igraph')
install.packages('networkD3')

### Load the libraries

library(igraph)
library(networkD3)

# Load data
data(MisLinks)
data(MisNodes)

# Plot 1
forceNetwork(Links = MisLinks, Nodes = MisNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8)

### Plot 2

# Use igraph to make the graph and find membership
karate <- make_graph("Zachary")
wc <- cluster_walktrap(karate)
members <- membership(wc)

# Convert to object suitable for networkD3
karate_d3 <- igraph_to_networkD3(karate, group = members)

# Create force directed network plot
forceNetwork(Links = karate_d3$links, Nodes = karate_d3$nodes, 
             Source = 'source', Target = 'target', 
             NodeID = 'name', Group = 'group')


