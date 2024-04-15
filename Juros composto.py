#Cálculo de investimento com juros compostos

def calculo_investimento(capital, taxa_juros, tempo):
    montante = capital * (1 + taxa_juros) ** tempo
    return montante

capital = float(input("Valor inicial a ser investido: "))
taxa_juros = float(input("Valor da taxa de juros composto: "))
tempo = float(input("Período da ação: "))

montante = calculo_investimento(capital, taxa_juros, tempo)
print(f"O valor final do investimento após  {tempo:.0f} anos é: R${montante:.2f}")