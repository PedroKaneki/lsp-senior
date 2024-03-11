
/*
*Alfa é utilizado para definir uma variavel do tipo String
Definir Alfa <nome variavel>[tamanho];
##########################################################
* Numerico é utilizado para definir variaveis 
Definir numero <nome variavel>[tamanho];
#########################################################
*Cursor é basicamewnte uma select em uma regra,
*/

@Definição das variaveis@
Definir Alfa aNomeCliente;
Definir Numero nNumeroPedido;@--A Definição das variaveis numericas sao opcionais--@
Definir Numero nTotalPedido;
Definir Data dDataVenda;
Definir Alfa aNumeroPedido;
Definir Alfa aTotalPedido;
Definir Alfa aDataVenda;
Definir Alfa aMensagem;
Definir Alfa aComDesconto;


aNomeCliente = "Cliente exemplo";
nNumeroPedido = 100;
nTotalPedido = 234.56;

nComDesconto = nTotalPedido * 0.9;
MontaData(08,12,2024,dDataVenda); @--função que monta data em uma variavel--@

IntParaAlfa(nNumeroPedido,aNumeroPedido);@--funçao que converte numero par texto--@

@--conversao de numero para texto respeitando a máscara--@
ConverteMascara(1,nTotalPedido,aTotalPedido,"zzz.zz9,99");
ConverteMascara(1,nComDesconto,aComDesconto,"zzz.zz9,99");

@--conversao de data para texto respeitando a máscara--@
ConverteMascara(1, dDtaVenda, aDataVenda, "DD/MM/YYYY");

@--concatenar as informaçoes das strings--@
aMensagem = "Pedido:" +aNumeroPedido + ", Cliente: " + aNomeCliente + ", Total Pedido" + aTotalPedido + ", Com Desconto:" + aComDesconto + ", Data Venda: " + aDataVenda;

Mensagem(Retorna,aMensagem);