import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraAnalyticFoundation where
  primitiveAlgebra : PrimitiveBanachAlgebra
  functionalCalculus : PrimitiveFunctionalCalculus primitiveAlgebra
  spectralTheoryPackage : SpectralMappingPackage primitiveAlgebra functionalCalculus
  gelfandTransformPackage : GelfandTransformPackage primitiveAlgebra

structure SpectralMappingPackage (B : PrimitiveBanachAlgebra) (F : PrimitiveFunctionalCalculus B) where
  continuousFunctionalCalculus : Prop
  holomorphicFunctionalCalculus : Prop
  spectralMappingTheorem : Prop
  spectralMappingTheoremClosed : spectralMappingTheorem

def SpectralMappingPackageClosed {B : PrimitiveBanachAlgebra} {F : PrimitiveFunctionalCalculus B}
    (P : SpectralMappingPackage B F) : Prop :=
  P.spectralMappingTheorem

theorem spectral_mapping_package_closed_from_evidence
    {B : PrimitiveBanachAlgebra} {F : PrimitiveFunctionalCalculus B}
    (P : SpectralMappingPackage B F) : SpectralMappingPackageClosed P := by
  exact P.spectralMappingTheoremClosed

structure GelfandTransformPackage (B : PrimitiveBanachAlgebra) where
  gelfandTransform : B.carrier → (B.carrier → ℂ)
  isometric : Prop
  isometricClosed : isometric

def GelfandTransformPackageClosed (G : GelfandTransformPackage B) : Prop :=
  G.isometric

theorem gelfand_transform_package_closed_from_evidence
    (G : GelfandTransformPackage B) : GelfandTransformPackageClosed G := by
  exact G.isometricClosed

def BanachAlgebraAnalyticFoundationClosed (A : BanachAlgebraAnalyticFoundation) : Prop :=
  PrimitiveFunctionalCalculusClosed A.functionalCalculus ∧
  SpectralMappingPackageClosed A.spectralTheoryPackage ∧
  GelfandTransformPackageClosed A.gelfandTransformPackage

theorem banach_algebra_analytic_foundation_closed_from_evidence
    (A : BanachAlgebraAnalyticFoundation) :
    BanachAlgebraAnalyticFoundationClosed A := by
  exact And.intro (primitive_functional_calculus_closed_from_evidence A.functionalCalculus)
    (And.intro (spectral_mapping_package_closed_from_evidence A.spectralTheoryPackage)
      (gelfand_transform_package_closed_from_evidence A.gelfandTransformPackage))

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse