import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure RademacherFunction (M : Type) where
  source : M → ℝ
  lipConstant : ℝ
  lipBound : ∀ x y, |source x - source y| ≤ lipConstant * dist x y

definition densityToughnessCondition (M : Type) [MetricSpace M] (f : RademacherFunction M) : Prop :=
  ∀ x y, |f.source x - f.source y| ≤ f.lipConstant * dist x y

end DensityToughnessCanonicalLaneLean
end HautevilleHouse