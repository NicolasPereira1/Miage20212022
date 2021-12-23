Class data.Reservation Extends (%Persistent, %JSON.Adaptor)
{

Property categorie As %String(VALUELIST = "'2 places', 'Cabriolet', 'Berline', 'Monospace', '4x4', '7 places'");

Property dateDebut As %Date;

Property dateFin As %Date;

Property plaque As %String(MAXLEN = 9, MINLEN = 9);

Index consulterParCategorie On categorie;

Storage Default
{
<Data name="ReservationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>categorie</Value>
</Value>
<Value name="3">
<Value>dateDebut</Value>
</Value>
<Value name="4">
<Value>dateFin</Value>
</Value>
<Value name="5">
<Value>plaque</Value>
</Value>
</Data>
<DataLocation>^data.ReservationD</DataLocation>
<DefaultData>ReservationDefaultData</DefaultData>
<IdLocation>^data.ReservationD</IdLocation>
<IndexLocation>^data.ReservationI</IndexLocation>
<StreamLocation>^data.ReservationS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
