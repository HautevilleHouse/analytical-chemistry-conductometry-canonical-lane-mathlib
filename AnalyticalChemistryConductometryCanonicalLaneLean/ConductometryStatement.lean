import HautevilleHouse.AnalyticalChemistryConductometryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure ConductometryTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  kohlrauschStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def conductometryTheoremStatement : ConductometryTheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  kohlrauschStatement := "Kohlrausch's law of independent migration of ions holds at infinite dilution",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse