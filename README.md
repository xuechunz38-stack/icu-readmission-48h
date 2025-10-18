# ICU 48-hour Readmission (Calibrated & Fair ML)

**Goal**: build an actionable predictor for 48h ICU readmission with **calibration**, **subgroup fairness**, and **decision-curve** evaluation.

## Data
- Start with **eICU demo** (public). Do **not** commit raw data.
- Optionally extend to **MIMIC-IV** after CITI approval.

## Methods (planned)
- Baseline: Logistic + Cox/AFT
- ML: Gradient boosting (LightGBM/XGBoost) with 24h rolling features
- Calibration: temperature scaling / isotonic
- Fairness: subgroup calibration error (age/sex), threshold gaps
- Actionability: decision-curve (net benefit) + top-K triage list

## Repro
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
bash run.sh
```

## Outputs
- `notebooks/01_baseline_and_gbdt.ipynb` with figures: ROC, PR, Calibration, DCA
- `results/metrics.json` and `figures/*.png`

## Notes
This is a student demo repository created for PhD outreach; raw data are not included.
