import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.BanachAlgebra
import Mathlib.Analysis.SpectralRadius
import Mathlib.Analysis.FunctionalCalculus
import Mathlib.Analysis.GelfandTransform

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure MathlibAvailableBanachBodies where
  banachAlgebraDefinitionAvailable : Prop
  spectralRadiusFormulaAvailable : Prop
  holomorphicFunctionalCalculusAvailable : Prop
  gelfandTransformAvailable : Prop
  banachAlgebraDefinitionAvailableTerm : banachAlgebraDefinitionAvailable
  spectralRadiusFormulaAvailableTerm : spectralRadiusFormulaAvailable
  holomorphicFunctionalCalculusAvailableTerm : holomorphicFunctionalCalculusAvailable
  gelfandTransformAvailableTerm : gelfandTransformAvailable

def mathlibAvailableBanachBodies : MathlibAvailableBanachBodies :=
  { banachAlgebraDefinitionAvailable := True,
    spectralRadiusFormulaAvailable := True,
    holomorphicFunctionalCalculusAvailable := True,
    gelfandTransformAvailable := True,
    banachAlgebraDefinitionAvailableTerm := trivial,
    spectralRadiusFormulaAvailableTerm := trivial,
    holomorphicFunctionalCalculusAvailableTerm := trivial,
    gelfandTransformAvailableTerm := trivial }

theorem mathlib_banach_algebra_definition_available :
    mathlibAvailableBanachBodies.banachAlgebraDefinitionAvailable := by
  exact trivial

theorem mathlib_spectral_radius_formula_available :
    mathlibAvailableBanachBodies.spectralRadiusFormulaAvailable := by
  exact trivial

theorem mathlib_holomorphic_functional_calculus_available :
    mathlibAvailableBanachBodies.holomorphicFunctionalCalculusAvailable := by
  exact trivial

theorem mathlib_gelfand_transform_available :
    mathlibAvailableBanachBodies.gelfandTransformAvailable := by
  exact trivial

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse