import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.BanachAlgebraFoundation

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure ContinuousFunctionalCalculusPackage (B : BanachAlgebraPackage) where
  element : B.carrier
  spectrum : Set ℂ
  continuousFunctionsOnSpectrum : Type u
  calculusMap : continuousFunctionsOnSpectrum → B.carrier
  homomorphism : Prop
  spectralMapping : Prop
  functionalCalculus : Prop

structure ContinuousFunctionalCalculusEvidence {B : BanachAlgebraPackage}
    (C : ContinuousFunctionalCalculusPackage B) where
  homomorphismClosed : C.homomorphism
  spectralMappingClosed : C.spectralMapping
  functionalCalculusClosed : C.functionalCalculus

def ContinuousFunctionalCalculusClosed {B : BanachAlgebraPackage}
    (C : ContinuousFunctionalCalculusPackage B) : Prop :=
  C.homomorphism ∧ C.spectralMapping ∧ C.functionalCalculus

theorem continuous_functional_calculus_closed_from_evidence {B : BanachAlgebraPackage}
    (C : ContinuousFunctionalCalculusPackage B) (E : ContinuousFunctionalCalculusEvidence C) :
    ContinuousFunctionalCalculusClosed C := by
  exact And.intro E.homomorphismClosed (And.intro E.spectralMappingClosed E.functionalCalculusClosed)

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse