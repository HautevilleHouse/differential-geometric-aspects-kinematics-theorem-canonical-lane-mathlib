import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean


structure HolonomyClassificationPackage where
  holonomyGroup : Type u
  reducedHolonomy : Type v
  ambroseSingerTheorem : Prop
  deRhamDecomposition : Prop
  holonomySubgroup : Prop
  bergmanBergerList : Prop

structure HolonomyClassificationEvidence (H : HolonomyClassificationPackage) where
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  deRhamDecompositionClosed : H.deRhamDecomposition
  holonomySubgroupClosed : H.holonomySubgroup
  bergmanBergerListClosed : H.bergmanBergerList

def HolonomyClassificationClosed (H : HolonomyClassificationPackage) : Prop :=
  H.ambroseSingerTheorem ∧ H.deRhamDecomposition ∧ H.holonomySubgroup ∧ H.bergmanBergerList

theorem holonomy_classification_closed_from_evidence (H : HolonomyClassificationPackage) (E : HolonomyClassificationEvidence H) : HolonomyClassificationClosed H := by
  exact And.intro E.ambroseSingerTheoremClosed (And.intro E.deRhamDecompositionClosed (And.intro E.holonomySubgroupClosed E.bergmanBergerListClosed))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse