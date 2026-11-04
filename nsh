lst={}
while True:
    caracteres= "+-/*!&$#?=@abcdefghijklnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    tamanho= int(input("tamanho da senha "))
    nome=input("nome ")
    from random import choice
    lista= ""
    for c in range(tamanho):
        lista += choice(caracteres)
    lst[nome]= lista
    print(lista)
    t= input("qual senha quer ver?")
    if t:
        print(lst[nome])
