/*
 * Copyright 2018 The Context Mapper Project Team
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.contextmapper.dsl.refactoring.henshin;

import org.eclipse.emf.henshin.interpreter.UnitApplication;

public class SplitAggregateByEntitiesRefactoring extends AbstractHenshinRefactoring {

	private String aggregateName;

	public SplitAggregateByEntitiesRefactoring(String aggregateName) {
		this.aggregateName = aggregateName;
	}

	@Override
	protected String getHenshinTransformationFilename() {
		return HenshinTransformationFileProvider.SPLIT_BY_AGGREGATE_BY_ENTITIES;
	}

	@Override
	protected String getTransformationUnitName() {
		return "splitAggregateByEntities";
	}

	@Override
	protected void setUnitParameters(UnitApplication refactoringUnit) {
		refactoringUnit.setParameterValue("aggregateName", aggregateName);
		refactoringUnit.setParameterValue("newAggregateName", "NewAggregate");
	}

	@Override
	protected void throwTransformationError() {
		throw new RuntimeException("Error splitting by aggregate '" + aggregateName + "' ... (Problem with Henshin transformation)");
	}

}
