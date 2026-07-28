import canonicalLaneMathlib.AdmissibleClass
import BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure SpectralRadiusPackage (A : AdmissibleClass) where
  spectralRadiusDefined : Prop
  spectralRadiusFormulaFromAlgebra : Prop
  spectralRadiusNonnegative : Prop
  spectralRadiusSubadditive : Prop

structure SpectralRadiusEvidence {A : AdmissibleClass} (S : SpectralRadiusPackage A) where
  spectralRadiusDefinedClosed : S.spectralRadiusDefined
  spectralRadiusFormulaFromAlgebraClosed : S.spectralRadiusFormulaFromAlgebra
  spectralRadiusNonnegativeClosed : S.spectralRadiusNonnegative
  spectralRadiusSubadditiveClosed : S.spectralRadiusSubadditive

def SpectralRadiusClosed {A : AdmissibleClass} (S : SpectralRadiusPackage A) : Prop :=
  S.spectralRadiusDefined ∧ S.spectralRadiusFormulaFromAlgebra ∧ S.spectralRadiusNonnegative ∧ S.spectralRadiusSubadditive

theorem spectral_radius_closed_from_evidence {A : AdmissibleClass}
    (S : SpectralRadiusPackage A) (E : SpectralRadiusEvidence S) : SpectralRadiusClosed S := by
  exact And.intro E.spectralRadiusDefinedClosed
    (And.intro E.spectralRadiusFormulaFromAlgebraClosed
      (And.intro E.spectralRadiusNonnegativeClosed E.spectralRadiusSubadditiveClosed))

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse