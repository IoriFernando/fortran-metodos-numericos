import matplotlib.pyplot as plt
import csv

# Lê os dados do CSV
with open("dados_interpolacao.csv", newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        x0 = float(row['x0'])
        y0 = float(row['y0'])
        x1 = float(row['x1'])
        y1 = float(row['y1'])
        x = float(row['x'])
        y_interp = float(row['y_interpolado'])

# Dados da reta
x_vals = [x0, x1]
y_vals = [y0, y1]

# Plotagem
plt.plot(x_vals, y_vals, 'bo-', label='Interpolação Linear')  # Reta
plt.plot(x, y_interp, 'ro', label='Ponto Interpolado')         # Ponto

# Estética
plt.xlabel('x')
plt.ylabel('y')
plt.title('Interpolação Linear entre Dois Pontos')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
