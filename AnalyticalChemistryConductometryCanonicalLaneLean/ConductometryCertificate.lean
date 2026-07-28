import HautevilleHouse.AnalyticalChemistryConductometryCanonicalLaneLean.ConductanceMeasurementLayer

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure ConductometryCertificate where
  ionLayer : IonTransportLayerCertificate
  kohlrauschLayer : KohlrauschLayerCertificate
  measLayer : ConductanceMeasurementLayerCertificate
  carriageRecord : ConductometryCarriageRecord
  baselineGatesClosed : Bool
  classicalBoundaryCarried : Bool

structure ConductometryCarriageRecord where
  flux : String
  projectionBasis : String
  admittedTransition : String
  carriedComponent : String
  endpointCheck : String
  closureState : String

def conductometryCertificate : ConductometryCertificate :=
  {
    ionLayer := ionTransportLayerCertificate,
    kohlrauschLayer := kohlrauschLayerCertificate,
    measLayer := conductaneMeasurementLayerCertificate,
    carriageRecord := {
      flux := "Conductometry closure request over source-derived constants",
      projectionBasis := "ion transport, Kohlrausch law, conductance measurement, and classical boundary",
      admittedTransition := "theorem-local certificate projected to admitted ion class",
      carriedComponent := "unrestricted classical analytical chemistry remains carried outside this admitted Lean layer",
      endpointCheck := "Lake build plus theorem-local certificate lemmas",
      closureState := "LOCAL_CONDUCTOMETRY_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED"
    },
    baselineGatesClosed := true,
    classicalBoundaryCarried := true
  }

def ConductometryCertificateClosed (C : ConductometryCertificate) : Prop :=
  IonTransportLayerClosed C.ionLayer ∧
  KohlrauschLayerClosed C.kohlrauschLayer ∧
  ConductanceMeasurementLayerClosed C.measLayer ∧
  C.baselineGatesClosed = true ∧
  C.classicalBoundaryCarried = true

theorem conductometry_certificate_closed_checked :
    ConductometryCertificateClosed conductometryCertificate := by
  exact And.intro ion_transport_layer_closed_checked
    (And.intro kohlrausch_layer_closed_checked
    (And.intro conductane_measurement_layer_closed_checked
    (And.intro rfl rfl)))

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse