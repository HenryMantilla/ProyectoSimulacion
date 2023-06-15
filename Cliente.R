library(R6)

Cliente <- R6Class("Cliente",
    public = list(
        cliente_ID = NULL,
        balance = 0,
        transacciones = list(),
        initialize = function(self, cliente_ID, balance, transacciones){
        self$cliente_ID <- cliente_ID
        self$balance <- balance
        self$transacciones <- transacciones
        }
        realizarTransaccion = function(monto, tipo){
            # tipo es un entero que indica el tipo de transaccion
            tipo_clase = switch(tipo,"DEPOSITO","RETIRO","PAGO", "CREDITO", "TRANSFERENCIA")
            if(tipo_clase == "DEPOSITO"){
                self$balance <- self$balance + monto
                transaccion <- list(tipo=tipo_clase, monto=monto, org_ID=org_ID, dest_ID=dest_ID)
            }else if(tipo_clase == "RETIRO"){
                if(self$balance >= monto){
                    self$balance <- self$balance - monto
                    transaccion <- list(tipo=tipo_clase, monto=monto, org_ID=org_ID, dest_ID=dest_ID)
                }
            }else if (tipo_clase == "PAGO"){
                if(self$balance >= monto){
                    self$balance <- self$balance - monto
                    transaccion <- list(tipo=tipo_clase, monto=monto, org_ID=org_ID, dest_ID=dest_ID)
                }
            }else if (tipo_clase == "CREDITO"){
                self$balance <- self$balance + monto
                transaccion <- list(tipo=tipo_clase, monto=monto, org_ID=org_ID, dest_ID=dest_ID)
            }else if (tipo_clase == "TRANSFERENCIA"){
                if(self$balance >= monto){
                    self$balance <- self$balance - monto
                    transaccion <- list(tipo=tipo_clase, monto=monto, org_ID=org_ID, dest_ID=dest_ID)
                }
            }
            self$transacciones <- c(self$transacciones, transaccion)
        }
        historialTransacciones = function(){
            return(self$transacciones)
        }
    portable = TRUE
    )
)