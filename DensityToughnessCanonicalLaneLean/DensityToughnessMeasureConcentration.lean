import DensityToughnessCanonicalLaneLean.DensityToughnessAdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure MeasureConcentrationPackage (A : AdmissibleClass) where
  leviMeasure : ℕ → Set (A.object.carrier)
  measureGrowth : Prop
  concentrationInequality : Prop
  measureGrowthClosed : measureGrowth
  concentrationInequalityClosed : concentrationInequality

def MeasureConcentrationClosed (A : AdmissibleClass) (M : MeasureConcentrationPackage A) : Prop :=
  M.measureGrowth ∧ M.concentrationInequality

theorem measure_concentration_closed (A : AdmissibleClass) (M : MeasureConcentrationPackage A) :
    MeasureConcentrationClosed A M := by
  exact And.intro M.measureGrowthClosed M.concentrationInequalityClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse