import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure MaximalFunctionPackage (M : Type) [MetricSpace M] where
  hardyLittlewoodMaximal : (M → ℝ) → ℝ → Prop
  strongTypeEstimate : Prop
  weakTypeEstimate : Prop

structure MaximalFunctionEvidence {M : Type} [MetricSpace M] (P : MaximalFunctionPackage M) where
  strongEstimateClosed : P.strongTypeEstimate
  weakEstimateClosed : P.weakTypeEstimate

def MaximalFunctionClosed {M : Type} [MetricSpace M] (P : MaximalFunctionPackage M) : Prop :=
  P.strongTypeEstimate ∧ P.weakTypeEstimate

theorem maximal_function_closed_from_evidence {M : Type} [MetricSpace M] (P : MaximalFunctionPackage M) (E : MaximalFunctionEvidence P) :
  MaximalFunctionClosed P :=
  And.intro E.strongEstimateClosed E.weakEstimateClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse