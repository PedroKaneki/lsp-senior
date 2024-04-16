Definir Cursor Cur_R034FUN;
Definir Alfa aNomFun;
Definir Data dDatAdm;
Definir Alfa aMensagem;
Definir alfa aDatAdm;

aNomFun = "";
dDatAdm = 0;
aMensagem = "";
aMensagem = "Não encontrou o colaborador";

@Cursor@
Cur_R034FUN.SQL "SELECT NOMFUM, DATADM FROM E034FUN \
                    WHERE NUMEMP = 1\
                    AND TIPCOL = 1 \
                    AND NUMCAD = 1";

Cur_R034FUN.AbrirCursor();
Se (Cur_R034FUN.Achou){

    aNomFun = Cur_R034FUN.NOMFUM;
    dDatAdm = Cur_R034FUN.DATADM;

    ConverteMascara(3,dDatAdm,aDatAdm, "DD/MM/YYYY");
    aMensagem = "Colaborador" + NOMFUM + " Data de Admissao" + aDatAdm;

    Se(nQtdEst = 0){
        aMensagem(Erro,"Estoque zerado");
    }
};

Cur_R034FUNF.FecharCursor();

Mensagem(Retorna,aMensagem);



