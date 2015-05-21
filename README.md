# LPP
## Learn++
- Incremental Image Learning System
- Developing by Biointelligence Lab

## Usage
### gen_models_cifar10.sh
- It generates multiple model/solver prototxt files specified by a given csv schedule file.

### do_train.sh
- It trains following the schedule.

## Results
- Full Batch, momentum=0.9, decay=0.004 (74.%)
- Single Batch(5k), momentum=0.9, decay=0.004 (63.%; *overfitting*) 
- Schedule, momentum=0.9, decay=0 (65.%)
- Schedule, momentum=0.9, decay=0.004 (58.%)
