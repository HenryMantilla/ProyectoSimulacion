library(R6)

Trasaccion <- R6Class("Transaccion",
    public = list(
        accion = NULL,
        monto = 0.0,
        org_ID = NULL,
        balanceAnteriorOrg = 0.0,
        balancePosteriorOrg = 0.0,
        dest_ID = NULL,
        balanceAnteriorDest = 0.0,
        balancePosteriorDest = 0.0,
        transaccion_fraudulenta = FALSE,
        initialize = function(self, accion, monto, org_ID, balanceAnteriorOrg, balancePosteriorOrg, dest_ID, balanceAnteriorDest, balancePosteriorDest, transaccion_fraudulenta){
            self$accion <- accion
            self$monto <- monto
            self$org_ID <- org_ID
            self$balanceAnteriorOrg <- balanceAnteriorOrg
            self$balancePosteriorOrg <- balancePosteriorOrg
            self$dest_ID <- dest_ID
            self$balanceAnteriorDest <- balanceAnteriorDest
            self$balancePosteriorDest <- balancePosteriorDest
            self$transaccion_fraudulenta <- transaccion_fraudulenta
        }
        setFraude = function(transaccion_fraudulenta){
            self$transaccion_fraudulenta <- transaccion_fraudulenta
        }
        transaccion_fraudulenta = function(){
            return(self$transaccion_fraudulenta)
        }
        getAccion = function(){
            return(self$accion)
        }
        getMonto = function(){
            return(self$monto)
        }
        getOrgID = function(){
            return(self$org_ID)
        }
        getBalanceAnteriorOrg = function(){
            return(self$balanceAnteriorOrg)
        }
        getBalancePosteriorOrg = function(){
            return(self$balancePosteriorOrg)
        }
        getDestID = function(){
            return(self$dest_ID)
        }
        getBalanceAnteriorDest = function(){
            return(self$balanceAnteriorDest)
        }
        getBalancePosteriorDest = function(){
            return(self$balancePosteriorDest)
        }
    )
)