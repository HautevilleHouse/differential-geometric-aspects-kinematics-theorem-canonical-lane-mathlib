import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure ConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  connectionForm : Type w
  curvatureForm : Type x
  torsionForm : Type y
  smoothManifold : Prop
  connectionDefined : Prop
  curvatureDefined : Prop
  torsionDefined : Prop
  firstBianchiIdentity : Prop
  secondBianchiIdentity : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  smoothManifoldClosed : C.smoothManifold
  connectionDefinedClosed : C.connectionDefined
  curvatureDefinedClosed : C.curvatureDefined
  torsionDefinedClosed : C.torsionDefined
  firstBianchiIdentityClosed : C.firstBianchiIdentity
  secondBianchiIdentityClosed : C.secondBianchiIdentity

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.smoothManifold ∧ C.connectionDefined ∧ C.curvatureDefined ∧ C.torsionDefined ∧ C.firstBianchiIdentity ∧ C.secondBianchiIdentity

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.connectionDefinedClosed
      (And.intro E.curvatureDefinedClosed
        (And.intro E.torsionDefinedClosed
          (And.intro E.firstBianchiIdentityClosed E.secondBianchiIdentityClosed))))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
