Class BO.Reservation Extends Ens.BusinessOperation
{

Property Adapter As Ens.OutboundAdapter;

Parameter ADAPTER = "Ens.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method creerReservation(pRequest As msg.creerReservationDmde, Output pResponse As msg.creerReservationeRpse) As %Status
{
    
    set pResponse = ##class(msg.creerReservationeRpse).%New()
    ##class(data.Reservation).consulterParCategorie(pRequest.categorie,.listVoiture)
        set tsc = ##class(data.Voiture).%DeleteId(listVoiture)
        if 'tsc{
            set pResponse.codeRetour = "KO"
            set pResponse.libErreur = "Erreur technique lors de la suppression"
            QUIT $$$OK
        }
}
else{
        set pResponse.codeRetour = "KO"
        set pResponse.libErreur = "Plaque introuvable"
        QUIT $$$OK
    }
set pResponse.codeRetour = "OK"

    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="msg.creerVoitureDmde">
        <Method>creerVoiture</Method>
    </MapItem>
</MapItems>
}

}
