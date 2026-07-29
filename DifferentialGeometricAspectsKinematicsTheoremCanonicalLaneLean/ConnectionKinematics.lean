import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure ConnectionKinematicsPackage where
  connectionForm : Type u
  curvatureForm : Type v
  torsionForm : Type w
  structureGroup : Prop
  cartanStructureEquations : Prop
  parallelTransportDefined : Prop
  holonomyGroupDefined : Prop

structure ConnectionKinematicsEvidence (C : ConnectionKinematicsPackage) where
  structureGroupClosed : C.structureGroup
  cartanStructureEquationsClosed : C.cartanStructureEquations
  parallelTransportDefinedClosed : C.parallelTransportDefined
  holonomyGroupDefinedClosed : C.holonomyGroupDefined

def ConnectionKinematicsClosed (C : ConnectionKinematicsPackage) : Prop :=
  C.structureGroup ∧ C.cartanStructureEquations ∧ C.parallelTransportDefined ∧ C.holonomyGroupDefined

theorem connection_kinematics_closed_from_evidence (C : ConnectionKinematicsPackage) (E : ConnectionKinematicsEvidence C) : ConnectionKinematicsClosed C := by
  exact And.intro E.structureGroupClosed (And.intro E.cartanStructureEquationsClosed (And.intro E.parallelTransportDefinedClosed E.holonomyGroupDefinedClosed))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse