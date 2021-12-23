Class msg.creerReservationDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property categorie As %String;

Property dateDebut As %Date;

Property dateFin As %Date;

Storage Default
{
<Data name="creerReservationDmdeDefaultData">
<Subscript>"creerReservationDmde"</Subscript>
<Value name="1">
<Value>categorie</Value>
</Value>
<Value name="2">
<Value>dateDebut</Value>
</Value>
<Value name="3">
<Value>dateFin</Value>
</Value>
</Data>
<DefaultData>creerReservationDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
