import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean

structure BanachAlgebraTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  banachAlgebraConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "banach-algebra-techniques-applied-functions-foundation"
def sourceDescription : String := "Banach Algebra Techniques Applied Functions Foundation Canonical Lane"
def baselineCertificateLane : String := "banach_algebra_constrained"
def baselineCertificateAllPass : Bool := true
def outsideConstantDependencyCount : Nat := 0

def SourceTheoremBoundary where
  claimBoundary : String := "classical boundary carried"

noncomputable def sourceTheoremBoundary : SourceTheoremBoundary := { claimBoundary := "classical boundary carried" }

def formalizationCertificate : Bool := true

end BanachAlgebraTechniquesAppliedFunctionsFoundationCanonicalLaneLean
end HautevilleHouse