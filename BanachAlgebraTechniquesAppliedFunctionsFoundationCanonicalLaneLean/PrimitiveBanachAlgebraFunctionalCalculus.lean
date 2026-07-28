import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure PrimitiveBanachAlgebra where
  carrier : Type u
  norm : carrier → ℝ
  algebraStructure : Prop
  completeNormedAlgebra : Prop
  unitElement : carrier

def BanachWitnessClosed (B : PrimitiveBanachAlgebra) : Prop :=
  B.completeNormedAlgebra

structure PrimitiveFunctionalCalculus (B : PrimitiveBanachAlgebra) where
  spectrum : B.carrier → Set ℂ
  holomorphicFunctionalCalculus : B.carrier → (ℂ → ℂ) → B.carrier
  spectralMappingProperty : Prop
  spectralMappingPropertyClosed : spectralMappingProperty

def PrimitiveFunctionalCalculusClosed {B : PrimitiveBanachAlgebra} (F : PrimitiveFunctionalCalculus B) : Prop :=
  F.spectralMappingProperty

theorem primitive_functional_calculus_closed_from_evidence
    {B : PrimitiveBanachAlgebra} (F : PrimitiveFunctionalCalculus B) :
    PrimitiveFunctionalCalculusClosed F := by
  exact F.spectralMappingPropertyClosed

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse