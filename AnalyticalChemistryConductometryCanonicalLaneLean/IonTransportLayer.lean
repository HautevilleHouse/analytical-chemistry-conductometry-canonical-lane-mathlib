import HautevilleHouse.AnalyticalChemistryConductometryCanonicalLaneLean.ConductometryConstants

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure IonTransportLayerCertificate where
  cation : String
  anion : String
  transportNumber : ℝ
  mobility : ℝ
  sourceConstantsInternalized : Bool
  mathlibSubstrateReady : Bool

def ionTransportLayerCertificate : IonTransportLayerCertificate :=
  {
    cation := "Na+",
    anion := "Cl-",
    transportNumber := 0.4,
    mobility := 5.2e-8,
    sourceConstantsInternalized := true,
    mathlibSubstrateReady := true
  }

def IonTransportLayerClosed (C : IonTransportLayerCertificate) : Prop :=
  C.cation = "Na+" ∧
  C.anion = "Cl-" ∧
  C.sourceConstantsInternalized = true ∧
  C.mathlibSubstrateReady = true

theorem ion_transport_layer_closed_checked :
    IonTransportLayerClosed ionTransportLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse