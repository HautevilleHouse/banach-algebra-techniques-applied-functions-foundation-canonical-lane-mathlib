import BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.BanachAlgebraBridge

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

def gateClosed (A : BanachAlgebraAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BanachAlgebraAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse