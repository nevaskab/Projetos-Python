#Este programa simula a criação de conta bancária
"""
import sqlite3

class conta_bancaria:
    def conta_fisica(self, titular_fisica, cpf_numero, saldo=0):
        self.titular_fisica = titular_fisica
        self.cpf_numero = cpf_numero
        self.saldo = saldo


    def conta_juridica(self, titular_juridica, cnpj_numero, saldo=0):
        self.titular_juridica = titular_juridica
        self.cnpj_numero = cnpj_numero
        self.saldo = saldo

    def deposito(self, valor):
        self.saldo += valor
        return self.saldo
    
    def saque(self, valor):
        if self.saldo >= valor:
            self.saldo -= valor
        else:
            print("Saldo insuficiente!")
            return self.saldo

if conta_fisica():       
    titular_fisica = str(input("Informe seu nome completo: "))
    cpf_numero = int(input("Informe seu CPF: "))
else:
    titular_juridica = str(input("Informe o nome completo da empresa: "))
    cnpj_numero = int(input("Informe o CNPJ: "))
"""