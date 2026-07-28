import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraAdmittedObject where
  algebra : Type u
  norm : algebra → ℝ
  normedRing : NormedRing algebra
  complete : CompleteSpace algebra
  spectrumNonempty : Prop
  conclusion : spectrumNonempty

structure AdmissibleClass where
  object : BanachAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BanachAlgebraWitnessClosed (O : BanachAlgebraAdmittedObject) : Prop :=
  O.spectrumNonempty

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse