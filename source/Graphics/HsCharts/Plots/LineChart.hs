module Graphics.HsCharts.Plots.LineChart
(
      LineChart
    , lineChart
    , defaultLineChart
) where
import Graphics.Gloss
import Graphics.HsCharts.Types

-----------------------------------------------------------------------------

data LineChart = LineChart { lineColor  :: Color
                           , points     :: [Point2] }

-- | Line Chart constructor.
lineChart :: Color -> [Point2] -> LineChart
lineChart = LineChart

defaultLineChart :: [Point2] -> LineChart
defaultLineChart = lineChart black

-----------------------------------------------------------------------------

instance ToPicture LineChart where
    toPicture l xAxis yAxis = color (lineColor l)
                                    (line $ scalePoints xAxis yAxis (points l))