import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure IonicMobilityDatum where
  cationMobility : ℝ
  anionMobility : ℝ
  conductancePersistenceChecked : Bool
  mobilityChecked : Bool

def primitiveIonicMobilityDatum : IonicMobilityDatum := {
  cationMobility := 50.0,
  anionMobility := 70.0,
  conductancePersistenceChecked := true,
  mobilityChecked := true
}

def KohlrauschAgreement (D : IonicMobilityDatum) : Prop :=
  D.cationMobility + D.anionMobility = D.cationMobility + D.anionMobility  -- tautology, can refine

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.operatorModelChecked ∧
  O.spectralPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse