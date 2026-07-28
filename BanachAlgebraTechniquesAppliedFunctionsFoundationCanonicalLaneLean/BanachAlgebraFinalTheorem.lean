import BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.BanachAlgebraGate

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

def ConstrainedBanachAlgebraClosure (A : BanachAlgebraAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_algebra_endgame (A : BanachAlgebraAdmissibleClass) :
    ConstrainedBanachAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse