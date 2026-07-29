import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure ConnectionFrame (M : Type u) [TopologicalSpace M] where
  tangentBundle : Type v
  connectionOneForm : tangentBundle → tangentBundle → tangentBundle
  torsionFree : Prop
  metricCompatible : Prop
  frameFields : List (tangentBundle → tangentBundle)

structure ConnectionFrameEvidence (M : Type u) [TopologicalSpace M] (F : ConnectionFrame M) where
  torsionFreeClosed : F.torsionFree
  metricCompatibleClosed : F.metricCompatible

def ConnectionFrameClosed (M : Type u) [TopologicalSpace M] (F : ConnectionFrame M) : Prop :=
  F.torsionFree ∧ F.metricCompatible

theorem connection_frame_closed_from_evidence (M : Type u) [TopologicalSpace M] (F : ConnectionFrame M) (E : ConnectionFrameEvidence M F) : ConnectionFrameClosed M F := by
  exact And.intro E.torsionFreeClosed E.metricCompatibleClosed

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse