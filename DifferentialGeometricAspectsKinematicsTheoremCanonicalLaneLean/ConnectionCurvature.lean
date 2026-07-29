import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure ConnectionForm where
  manifold : Type u
  bundle : Type v
  connection : Type w
  curvatureForm : Type w
  torsionForm : Type w
  connectionCompatibleWithMetric : Prop
  torsionFree : Prop
  curvatureSatisfiesBianchi : Prop

def ConnectionClosed (C : ConnectionForm) : Prop :=
  C.connectionCompatibleWithMetric ∧
  C.torsionFree ∧
  C.curvatureSatisfiesBianchi

theorem connection_closed_iff (C : ConnectionForm) :
    ConnectionClosed C ↔ (C.connectionCompatibleWithMetric ∧ C.torsionFree ∧ C.curvatureSatisfiesBianchi) :=
  by rfl

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
