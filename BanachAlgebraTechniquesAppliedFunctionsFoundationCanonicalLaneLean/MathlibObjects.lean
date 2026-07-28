import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : MetricSpace carrier

default

structure BanachAlgebra (A : BanachSpace) where
  multiplication : A.carrier → A.carrier → A.carrier
  algebraNorm : ℝ
  submultiplicative : ∀ x y, norm (multiplication x y) ≤ algebraNorm * norm x * norm y
  unit : A.carrier
  unitNorm : norm unit = 1

default

structure BanachAlgebraAdmittedObject where
  algebra : BanachAlgebra
  spectralRadiusFormula : Prop
  functionalCalculusExists : Prop
  conclusion : spectralRadiusFormula ∧ functionalCalculusExists

structure BanachAlgebraEndgameState where
  object : BanachAlgebraAdmittedObject

def BanachAlgebraWitnessClosed (O : BanachAlgebraAdmittedObject) : Prop :=
  O.conclusion

end HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse