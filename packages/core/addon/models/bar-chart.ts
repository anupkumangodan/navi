/**
 * Copyright 2020, Yahoo Holdings Inc.
 * Licensed under the terms of the MIT license. See accompanying LICENSE.md file for terms.
 */
import LineChart from './line-chart';
import { attr } from '@ember-data/model';
import { ChartConfig } from './chart-visualization';

export type BarChartConfig = ChartConfig<'bar-chart'>;

export default class BarChart extends LineChart<'bar-chart'> implements BarChartConfig {
  @attr('string', { defaultValue: 'bar-chart' })
  type!: 'bar-chart';
}

// DO NOT DELETE: this is how TypeScript knows how to look up your models.
declare module 'ember-data/types/registries/model' {
  export default interface ModelRegistry {
    'bar-chart': BarChart;
  }
}
