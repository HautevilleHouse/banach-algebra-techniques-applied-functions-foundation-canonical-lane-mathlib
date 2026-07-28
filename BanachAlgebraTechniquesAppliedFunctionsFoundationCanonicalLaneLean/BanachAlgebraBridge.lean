import BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.BanachAlgebraAdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

def bridgeClosed (A : BanachAlgebraAdmissibleClass) : Prop :=
  banachAlgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : BanachAlgebraAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse