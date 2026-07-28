import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraObject where
  algebra : Type u
  norm : algebra → ℝ
  multiplication : algebra → algebra → algebra
  normedAlgebraAxioms : Prop
  complete : Prop
  spectralProperties : Prop
  conclusion : spectralProperties

structure BanachAlgebraAdmissibleClass where
  object : BanachAlgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def banachAlgebraWitnessClosed (O : BanachAlgebraObject) : Prop :=
  O.spectralProperties

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse