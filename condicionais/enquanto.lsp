Definir Alfa aTexto;
Definir Alfa aNovoTexto;
Definir Alfa aTextoAux;

aTexto = "String que deve ser escrita de forma invertida!!";
aNovoTexto = "";
aTextoAux = "";

Enquanto (aTexto <> "")
Inicio
    aTextoAux = aTexto;
    TamanhoAlfa(aTexto,nTamanho);
    CopiarAlfa(aTextoAux,nTamanho,1);
    aNovoTexto = aNovoTexto + aTextoAux;
    aTextoAux = aTexto;
    DeletarAlfa(aTextoAux,nTamanho,1);
    aTexto = aTextoAux;
Fim;

Mensagem(Retorna,aNovoTexto);