# Sim, outra modificação do iMac G3 para usar como PC moderno

Essa modificação consiste em transformar uma carcaça de um iMac G3 Tray Loading, que não vejo muitas com esse modelo, em um novo All-in-One. Porém também quero incluir a possibilidade de usá-lo como monitor externo, para meu trabalho por exemplo.

## Sobre
Minha maior motivação para esse projeto é a estética. Sempre gostei desse visual tecnologico [Y2K](https://pt.wikipedia.org/wiki/Est%C3%A9tica_Y2K). Porém sei das limitações que os computadores daquele tempo tem para hoje em dia. Mas isso não muda o fato de eu gostar da estética.

O objetivo aqui é juntar o útil ao agradável. Esse é meu plano:
* Encontrar uma tela compatível, e que não tenha uma resolução baixa
* Colocar meu Mini PC dentro
* Também funcionar como monitor externo, para que eu possa usar no trabalho.

## Partes utilizadas
* Carcaça de um iMac G3 (achei uma bem barata, pois era usada como cama de pet)
* Mini PC - Beelink SER5 Pro com AMD Ryzen 7 5850U (assim não tenho que ficar preocupado com todas partes de um PC convencional)
* Tela HYDIS HV150UX2-100 (Resolução de 1600x1200. Tela de 15")
* Cotroladora LVDS M.NT68676.2A.11486 modificada (nada complicado)
* Leitor de CD/DVD USB-C Asus SDRW-08U8M-U (queria um confiavel, e não um generico)
* Caixas de som original
* Painel frontal original
* Teclado e mouse orignais (BONUS, pois dei sorte de achar na internet)

## Usando o Teclado e Mouse
Nos dias de hoje, principalmente o mouse, é bem complicado usar, ja que ele tem apenas um botão. No Mac, isso era contornado usando teclas modificadoras, como o Control para modificar o tipo do clique.
Infelizmente isso não existe nos demais sistemas operacionais, porém é totalmente contornavel usando o Auto-Hotkey.
No meu caso, como estou usando o Linux Mint como sistema operacional, a única forma de fazer funcionar para mim foi usar o [AHK X11](https://github.com/phil294/AHK_X11). Ele funciona diferente de como funciona no Windows, mas com um pouco de costume e alterações, consegui fazer um script que consegue:
* **Shift + Backspace** (a tecla delete funciona como backspace) > Realiza a função da tecla DELETE de um teclado convencional.
* **F6** > Atua como o botão do meio do mouse, imitando um clique fisico e permitindo a ação de segurar
* **F7** > Atua como o botão direito do mouse, imitando um clique fisico e permitindo a ação de segurar
* **Alt/Option + Clique** > Clique com o botão direito (literalmente só o clique)
* **Ctrl/Control + Alt/Option + Clique** > Clique com o botão do meio do mouse (literalmente só o clique)

Também precisei criar um arquivo para remapear algumas teclas do teclado. O primeiro passo foi deixar o teclado no padrão "Inglês, internacional, com teclas mortas". Isso na fez o layout casar quase todo.

Porém a acentuação não estava certa, então basicamente corrigi isso. Também usei a tecla Command/Win da direita como um modificador, para usar o cedilha (apertar ela + virgula, que fica do lado do M, produz o cedilha... basta apertar o C depois)

Todos esses scripts auxiliares, você encontra [aqui](https://github.com/zenaror/iMacG3_Mod/tree/main/Sistema%20Operacional/Linux%20Mint)

## Preparação da tela
