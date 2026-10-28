dicionario= {}
while True:
    nova_palavra= input("deseja adicionar uma nova palavra, digite sua palavra aquí")
    if nova_palavra:
        significado= input("significado")
        dicionario[nova_palavra]= significado
    else:
        pal= input('qual palavra deseja ver')
        if not pal in dicionario:
            print("palavra não encontrada")
        elif pal:
            print(dicionario[pal])
        else:
            None
