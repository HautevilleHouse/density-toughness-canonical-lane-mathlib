import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DensityToughnessCanonicalLaneLean.RademacherTheorem

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure DensityTransferPackage where
  sourceMetric : Type
  targetMetric : Type
  lipschitzMap : sourceMetric → targetMetric
  pushforwardDensity : Prop
  densityPreservation : Prop

structure DensityTransferEvidence (D : DensityTransferPackage) where
  pushforwardClosed : D.pushforwardDensity
  densityPreservationClosed : D.densityPreservation

def DensityTransferClosed (D : DensityTransferPackage) : Prop :=
  D.pushforwardDensity ∧ D.densityPreservation

theorem density_transfer_closed_from_evidence (D : DensityTransferPackage) (E : DensityTransferEvidence D) :
  DensityTransferClosed D :=
  And.intro E.pushforwardClosed E.densityPreservationClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse