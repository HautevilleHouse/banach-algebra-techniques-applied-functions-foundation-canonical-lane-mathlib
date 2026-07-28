import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure SpectralMappingPackage {B : BanachAlgebraPackage}
    {F : FunctionalCalculusPackage B} where
  spectrumPolynomial : Prop
  spectrumRational : Prop
  spectrumHolomorphic : Prop
  spectralRadiusFormula : Prop

structure SpectralMappingEvidence {B : BanachAlgebraPackage}
    {F : FunctionalCalculusPackage B}
    (S : SpectralMappingPackage B F) where
  spectrumPolynomialClosed : S.spectrumPolynomial
  spectrumRationalClosed : S.spectrumRational
  spectrumHolomorphicClosed : S.spectrumHolomorphic
  spectralRadiusFormulaClosed : S.spectralRadiusFormula

def SpectralMappingClosed {B : BanachAlgebraPackage}
    {F : FunctionalCalculusPackage B}
    (S : SpectralMappingPackage B F) : Prop :=
  S.spectrumPolynomial ∧ S.spectrumRational ∧
  S.spectrumHolomorphic ∧ S.spectralRadiusFormula

theorem spectral_mapping_closed_from_evidence
    {B : BanachAlgebraPackage} {F : FunctionalCalculusPackage B}
    (S : SpectralMappingPackage B F) (E : SpectralMappingEvidence S) :
    SpectralMappingClosed S := by
  exact And.intro E.spectrumPolynomialClosed
    (And.intro E.spectrumRationalClosed
      (And.intro E.spectrumHolomorphicClosed E.spectralRadiusFormulaClosed))

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse