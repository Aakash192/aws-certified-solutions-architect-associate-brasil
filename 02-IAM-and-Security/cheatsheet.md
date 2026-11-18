# Quick Guide

## Decision table

| Signal in the question | When to use | When to avoid | Exam trap |
|---|---|---|---|
| Low manual operation | Managed service with native automation | Self-managed solution without need | Confusing full control with the best total cost |
| Unpredictable spike | Horizontal scaling and decoupling | Fixed capacity and manual tuning | Sizing for the average and failing at the peak |
| Strong security requirement | Least privilege + encryption + auditing | Broad permissions for convenience | Thinking encryption alone solves governance |
| Cost as an explicit constraint | Choose by consumption and access profile | A single class for all data | Cutting cost without validating the functional impact |

## Service signals

- **IAM**: prioritize it when the scenario needs native integration and a lower operational load.
- **KMS**: use it when there is a need for controlled elasticity and predictable behavior at peak.

## When to use this module in your review

- Before architecture practice exams focused on trade-offs.
- When you keep making the same mistake choosing between two similar options.
- In the final stretch to calibrate your criteria for eliminating options.

## Recurring traps

- Solving availability with a performance feature.
- Trading simplicity for an oversized architecture.
- Ignoring observability when defining the final design.
---

## ☁️ Follow CloudStudy

We are building a platform to help Brazilians study AWS in a more practical, organized and accessible way.

Follow CloudStudy for new materials, updates and content about AWS certifications:

- Instagram: https://www.instagram.com/cloudstudy.ai/
- LinkedIn: https://www.linkedin.com/company/cloudstudy-ai/

---

> If your goal is to connect AWS architecture with ingestion, processing and analytics, the complementary track is: [Data Engineering on AWS](https://www.udemy.com/course/engenharia-de-dados-na-aws-do-zero-aos-projetos-reais/?referralCode=E28670B9116BA68E08A9).
