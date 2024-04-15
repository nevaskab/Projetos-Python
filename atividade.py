#Este programa calcula o salário de um vendedor ao final do mês

salario = 1412
comissao = 0.15
def calculo_salario (salario, vendas, comissao):
    salario_final = salario + (vendas * comissao)
    return salario_final
    
vendedor = str(input("Nome completo do vendedor: "))
vendas = float(input("Valor das vendas (em R$): "))

salario_final = calculo_salario(salario, vendas, comissao)
print(f"Nome do vendedor: {vendedor}\nSalário fixo: R$  {salario} \nSalário ao final do mês: R$ {salario_final:.2f}")
