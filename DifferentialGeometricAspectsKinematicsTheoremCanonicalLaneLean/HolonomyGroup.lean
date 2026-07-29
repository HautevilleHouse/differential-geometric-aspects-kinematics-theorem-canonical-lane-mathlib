import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  connection : Type v
  holonomyGroup : Type w
  holonomyAlgebra : Type x
  reducedHolonomy : Type y
  connectionCompatible : Prop
  holonomyGroupDefined : Prop
  holonomyAlgebraDefined : Prop
  reducedHolonomyDefined : Prop
  ambroiseSingerTheorem : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  connectionCompatibleClosed : H.connectionCompatible
  holonomyGroupDefinedClosed : H.holonomyGroupDefined
  holonomyAlgebraDefinedClosed : H.holonomyAlgebraDefined
  reducedHolonomyDefinedClosed : H.reducedHolonomyDefined
  ambroiseSingerTheoremClosed : H.ambroiseSingerTheorem

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.connectionCompatible ∧ H.holonomyGroupDefined ∧ H.holonomyAlgebraDefined ∧ H.reducedHolonomyDefined ∧ H.ambroiseSingerTheorem

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.connectionCompatibleClosed
    (And.intro E.holonomyGroupDefinedClosed
      (And.intro E.holonomyAlgebraDefinedClosed
        (And.intro E.reducedHolonomyDefinedClosed E.ambroiseSingerTheoremClosed)))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
