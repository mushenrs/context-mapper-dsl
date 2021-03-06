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
package org.contextmapper.dsl.ui

import org.contextmapper.dsl.ui.hover.CMLHoverProvider
import org.contextmapper.dsl.ui.hover.CMLXbaseDispatchingEObjectTextHover
import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor
import org.eclipse.xtext.ui.editor.hover.IEObjectHoverProvider
import org.eclipse.xtext.ui.editor.model.edit.ITextEditComposer
import org.contextmapper.dsl.ui.quickfix.CMLTextEditComposer

/**
 * Use this class to register components to be used within the Eclipse IDE.
 */
@FinalFieldsConstructor
class ContextMappingDSLUiModule extends AbstractContextMappingDSLUiModule {

	override bindIEObjectHover() {
		return CMLXbaseDispatchingEObjectTextHover
	}

	def Class<? extends IEObjectHoverProvider> bindIEObjectHoverProvider() {
		return CMLHoverProvider
	}
	
	def Class<? extends ITextEditComposer> bindITextEditComposer() {
		return CMLTextEditComposer
	}

}
