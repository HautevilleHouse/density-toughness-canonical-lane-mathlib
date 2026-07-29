import DensityToughnessCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure DensityToughnessProblem where
  space : Type u
  topology : TopologicalSpace space
  dimension : ℕ
  setFamily : Set (Set space)
  densityMeasure : Type v
  toughnessCondition : Prop
  dimensionConstraint : dimension = 2 ∨ dimension = 3

structure ToughnessCore where
  densityFunction : DensityToughnessProblem → ℝ
  toughnessThreshold : ℝ
  densityBound : densityFunction ≤ toughnessThreshold
  lowerBound : ℝ
  upperBound : ℝ
  lowerBoundLessUpper : lowerBound < upperBound

structure DensityEstimates where
  localDensity : ℝ → ℝ
  globalToughness : ℝ → ℝ
  scalingExponent : ℝ
  estimateClosed : Prop

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
