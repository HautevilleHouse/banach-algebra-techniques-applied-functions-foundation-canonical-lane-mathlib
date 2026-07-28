import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraPackage where
  carrier : Type u
  norm : carrier → ℝ
  mul : carrier → carrier → carrier
  involution : carrier → carrier
  unit : carrier
  normedAlgebra : Prop
  banachSpace : Prop
  involutive : Prop
  cStarIdentity : Prop
  commutative : Prop

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  normedAlgebraClosed : B.normedAlgebra
  banachSpaceClosed : B.banachSpace
  involutiveClosed : B.involutive
  cStarIdentityClosed : B.cStarIdentity
  commutativeClosed : B.commutative

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.normedAlgebra ∧ B.banachSpace ∧ B.involutive ∧ B.cStarIdentity ∧ B.commutative

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.normedAlgebraClosed
    (And.intro E.banachSpaceClosed
      (And.intro E.involutiveClosed
        (And.intro E.cStarIdentityClosed E.commutativeClosed)))

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse