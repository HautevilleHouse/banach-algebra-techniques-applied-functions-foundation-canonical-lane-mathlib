import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.BanachAlgebraFoundation

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure GelfandTransformPackage (B : BanachAlgebraPackage) where
  maximalIdealSpace : Type u
  topology : TopologicalSpace maximalIdealSpace
  gelfandMap : B.carrier → (maximalIdealSpace → ℂ)
  isometric : Prop
  surjective : Prop
  homeomorphism : Prop

structure GelfandTransformEvidence {B : BanachAlgebraPackage} (G : GelfandTransformPackage B) where
  isometricClosed : G.isometric
  surjectiveClosed : G.surjective
  homeomorphismClosed : G.homeomorphism

def GelfandTransformClosed {B : BanachAlgebraPackage} (G : GelfandTransformPackage B) : Prop :=
  G.isometric ∧ G.surjective ∧ G.homeomorphism

theorem gelfand_transform_closed_from_evidence {B : BanachAlgebraPackage} (G : GelfandTransformPackage B)
    (E : GelfandTransformEvidence G) : GelfandTransformClosed G := by
  exact And.intro E.isometricClosed (And.intro E.surjectiveClosed E.homeomorphismClosed)

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse