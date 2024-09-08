from graphviz import Digraph

# Create a new directed graph
dot = Digraph()

# Add nodes for each model
dot.node('Component', 'Component')
dot.node('Specification', 'Specification')
dot.node('Requirement', 'Requirement')

# Add edges to represent relationships
# Requirement to Component (ManyToMany)
dot.edge('Requirement', 'Component', label='ManyToMany', dir='both')

# Requirement to Specification (ForeignKey)
dot.edge('Requirement', 'Specification', label='ForeignKey')

# Display the diagram
dot.render('/mnt/data/erd_diagram', format='png', cleanup=False)
'/mnt/data/erd_diagram.png'
