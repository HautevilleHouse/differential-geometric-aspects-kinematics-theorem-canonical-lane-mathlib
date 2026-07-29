import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure HolonomyPackage where
  parallelTransportMap : Type u
  holonomyGroup : Type v
  holonomyLieSubgroup : Prop
  ambroseSingerTheorem : Prop
  reducedHolonomy : Prop
  flatConnectionClassification : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyLieSubgroupClosed : H.holonomyLieSubgroup
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  reducedHolonomyClosed : H.reducedHolonomy
  flatConnectionClassificationClosed : H.flatConnectionClassification

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyLieSubgroup ∧ H.ambroseSingerTheorem ∧
  H.reducedHolonomy ∧ H.flatConnectionClassification

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyLieSubgroupClosed
    (And.intro E.ambroseSingerTheoremClosed
      (And.intro E.reducedHolonomyClosed E.flatConnectionClassificationClosed))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse