import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure DensityPackingPackage where
  packingRadius : ℝ
  independenceNumber : ℕ
  packingDensity : ℝ
  deltaSeparated : Prop

structure DensityPackingEvidence (D : DensityPackingPackage) where
  packingRadiusClosed : D.packingRadius > 0
  independenceNumberClosed : D.independenceNumber > 0
  packingDensityClosed : D.packingDensity > 0 ∧ D.packingDensity ≤ 1
  deltaSeparatedClosed : D.deltaSeparated

def DensityPackingClosed (D : DensityPackingPackage) : Prop :=
  D.packingRadius > 0 ∧ D.independenceNumber > 0 ∧ D.packingDensity > 0 ∧ D.packingDensity ≤ 1 ∧ D.deltaSeparated

theorem density_packing_closed_from_evidence (D : DensityPackingPackage) (E : DensityPackingEvidence D) :
    DensityPackingClosed D := by
  exact And.intro E.packingRadiusClosed (And.intro E.independenceNumberClosed
    (And.intro (And.left E.packingDensityClosed) (And.right E.packingDensityClosed E.deltaSeparatedClosed)))

end DensityToughnessCanonicalLaneLean
end HautevilleHouse