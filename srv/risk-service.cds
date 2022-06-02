using {sap.ui.riskmanagement as my} from '../db/schema';

@path : 'service/risk'
service RiskService {
  @restrict : [
    {
      grant : ['READ'],
      to    : ['RiskViewer']
    },
    {
      grant : ['*'],
      to    : ['RiskManager']
    }
  ]
  entity Risks       as projection on my.Risks;

  annotate Risks with @odata.draft.enabled;

  @restrict : [
    {
      grant : ['READ'],
      to    : ['RiskViewer']
    },
    {
      grant : ['*'],
      to    : ['RiskManager']
    }
  ]
  entity Mitigations as projection on my.Mitigations;

  annotate Mitigations with @odata.draft.enabled;
}
