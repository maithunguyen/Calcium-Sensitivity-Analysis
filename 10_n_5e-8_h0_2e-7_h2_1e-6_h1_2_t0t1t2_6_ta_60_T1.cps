<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.21 (Build 166) (http://www.copasi.org) at 2017-11-13 11:00:42 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="21" versionDevel="166" copasiSourcesModified="0">
  <Model key="Model_0" name="calcium" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T16:29:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="calcium" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:11:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="h0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="h2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="h1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="ta" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="t1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="T1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="t0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="t2" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_0" name="event" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T16:50:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h1],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="event_1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T16:58:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="event_2" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T20:49:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="event_3" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T20:51:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="event_4" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T20:53:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*2+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="event_5" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-12T20:56:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*2+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*2
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="event_6" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:09:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*3+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*2
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="event_7" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:24:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*3+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*3
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="event_8" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:26:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*4+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*3
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="event_9" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:29:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*4+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*4
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="event_10" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:31:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*5+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*4
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="event_11" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:34:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+5*&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>+5*&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="event_12" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*6+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="event_13" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:39:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*6+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*6
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_14" name="event_14" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:42:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*7+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*6
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="event_15" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:44:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*7+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*7
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="event_16" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*8+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*7
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="event_17" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*8+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_18" name="event_18" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*9+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_19" name="event_19" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*9+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*9
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_20" name="event_20" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*10+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*9
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_21" name="event_21" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T11:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=calcium,Reference=Time>-floor(&lt;CN=Root,Model=calcium,Reference=Time>/&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value>)*&lt;CN=Root,Model=calcium,Vector=Values[T1],Reference=Value> > &lt;CN=Root,Model=calcium,Vector=Values[ta],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t1],Reference=Value>+&lt;CN=Root,Model=calcium,Vector=Values[t0],Reference=Value>*10+&lt;CN=Root,Model=calcium,Vector=Values[t2],Reference=Value>*10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=calcium,Vector=Values[h0],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=calcium" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Compartments[compartment],Vector=Metabolites[calcium]" value="30110704285000" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[h0]" value="4.9999999999999998e-008" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[h2]" value="1.9999999999999999e-007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[h1]" value="9.9999999999999995e-007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[ta]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[t1]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[T1]" value="60" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[t0]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=calcium,Vector=Values[t2]" value="2" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 30110704285000 1 4.9999999999999998e-008 1.9999999999999999e-007 9.9999999999999995e-007 6 2 60 2 2 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-009"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="3000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="300"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-007"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-013"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-009"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-007"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-013"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-013"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-007"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-007"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-007"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-013"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[calcium]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=calcium,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=calcium,Vector=Compartments[compartment],Vector=Metabolites[calcium],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
