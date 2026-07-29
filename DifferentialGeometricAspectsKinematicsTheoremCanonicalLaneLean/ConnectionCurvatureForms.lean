import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure ConnectionFormsPackage where
  principalBundle : Type u
  baseManifold : Type v
  lieGroup : Type w
  connectionOneForm : principalBundle → baseManifold → Type
  curvatureTwoForm : principalBundle → baseManifold → Type
  connectionHolonomy : Prop
  curvatureStructureEquation : Prop
  constantCurvatureModel : Prop

structure ConnectionFormsEvidence (C : ConnectionFormsPackage) where
  connectionHolonomyClosed : C.connectionHolonomy
  curvatureStructureEquationClosed : C.curvatureStructureEquation
  constantCurvatureModelClosed : C.constantCurvatureModel

def ConnectionFormsClosed (C : ConnectionFormsPackage) : Prop :=
  C.connectionHolonomy ∧ C.curvatureStructureEquation ∧ C.constantCurvatureModel

theorem connection_forms_closed_from_evidence (C : ConnectionFormsPackage) (E : ConnectionFormsEvidence C) : ConnectionFormsClosed C := by
  exact And.intro E.connectionHolonomyClosed (And.intro E.curvatureStructureEquationClosed E.constantCurvatureModelClosed)

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse