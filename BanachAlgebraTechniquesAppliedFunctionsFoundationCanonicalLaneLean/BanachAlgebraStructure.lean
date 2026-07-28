import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraPackage where
  algebra : Type u
  norm : algebra → ℝ
  normedRing : NormedRing algebra
  complete : CompleteSpace algebra
  unitMultiplicative : Prop
  normedAlgebra : NormedAlgebra ℝ algebra
  spectralRadiusFormula : Prop

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  unitMultiplicativeClosed : B.unitMultiplicative
  normedAlgebraClosed : B.normedAlgebra
  spectralRadiusFormulaClosed : B.spectralRadiusFormula

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.unitMultiplicative ∧ B.normedAlgebra ∧ B.spectralRadiusFormula

theorem banach_algebra_closed_from_evidence
    (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.unitMultiplicativeClosed
    (And.intro E.normedAlgebraClosed E.spectralRadiusFormulaClosed)

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse