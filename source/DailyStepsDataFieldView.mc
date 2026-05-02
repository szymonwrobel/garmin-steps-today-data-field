import Toybox.Activity;
import Toybox.ActivityMonitor;
import Toybox.Lang;
import Toybox.Time;
import Toybox.WatchUi;

class DailyStepsDataFieldView extends WatchUi.SimpleDataField {
    function initialize() {
        SimpleDataField.initialize();
        label = WatchUi.loadResource(Rez.Strings.LabelStepsToday).toUpper();
    }

    function compute(
        info as Activity.Info
    ) as Numeric or Duration or String or Null {
        var monitor = ActivityMonitor.getInfo();
        if (monitor.steps == null) {
            return 0;
        }
        return monitor.steps;
    }
}
