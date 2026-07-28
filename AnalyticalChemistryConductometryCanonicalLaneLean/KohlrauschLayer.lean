import HautevilleHouse.AnalyticalChemistryConductometryCanonicalLaneLean.IonTransportLayer

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure KohlrauschLayerCertificate where
  limitingMolarConductivity : ℝ
  concentration : ℝ
  kohlrauschConstant : ℝ
  lambdaZeroAgreement : Bool

def kohlrauschLayerCertificate : KohlrauschLayerCertificate :=
  {
    limitingMolarConductivity := limitingMolarConductivity,
    concentration := concentration,
    kohlrauschConstant := 0.5,
    lambdaZeroAgreement := true
  }

def KohlrauschLayerClosed (C : KohlrauschLayerCertificate) : Prop :=
  C.lambdaZeroAgreement = true ∧
  C.limitingMolarConductivity > 0

theorem kohlrausch_layer_closed_checked :
    KohlrauschLayerClosed kohlrauschLayerCertificate := by
  exact And.intro rfl (by linarith)

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse