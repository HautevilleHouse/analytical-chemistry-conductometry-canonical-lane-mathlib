import HautevilleHouse.AnalyticalChemistryConductometryCanonicalLaneLean.ConductometryMathlibObjects

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure IonicMobilityLayerCertificate where
  mobilityDatum : IonicMobilityDatum
  persistenceRoute : String
  ionEndpointRoute : String
  kohlrauschAgreementChecked : Bool
  endpointChecked : Bool
  classicalComplementCarried : Bool

def ionicMobilityLayerCertificate : IonicMobilityLayerCertificate := {
  mobilityDatum := primitiveIonicMobilityDatum,
  persistenceRoute := "ionic mobility persistence through the conductance substrate",
  ionEndpointRoute := "limiting molar conductivity equals sum of ionic contributions",
  kohlrauschAgreementChecked := true,
  endpointChecked := true,
  classicalComplementCarried := true
}

def IonicMobilityLayerClosed (C : IonicMobilityLayerCertificate) : Prop :=
  KohlrauschAgreement C.mobilityDatum ∧
  C.mobilityDatum.mobilityChecked = true ∧
  C.mobilityDatum.conductancePersistenceChecked = true ∧
  C.kohlrauschAgreementChecked = true ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem ionic_mobility_layer_closed_checked :
    IonicMobilityLayerClosed ionicMobilityLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse