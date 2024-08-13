/**
 * SuiteCRM is a customer relationship management program developed by SalesAgility Ltd.
 * Copyright (C) 2021 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SALESAGILITY, SALESAGILITY DISCLAIMS THE
 * WARRANTY OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License
 * version 3, these Appropriate Legal Notices must retain the display of the
 * "Supercharged by SuiteCRM" logo. If the display of the logos is not reasonably
 * feasible for technical reasons, the Appropriate Legal Notices must display
 * the words "Supercharged by SuiteCRM".
 */

import {
    Component,
    Input,
    OnDestroy,
    OnInit,
    signal,
} from '@angular/core';
import {Observable, Subscription, of} from 'rxjs';
import {filter, map, tap} from 'rxjs/operators';
import {ThemeImage, ThemeImageMap, ThemeImagesStore} from '../../store/theme-images/theme-images.store';

@Component({
    selector: 'scrm-image',
    templateUrl: './image.component.html',
    styleUrls: []
})
export class ImageComponent  implements OnInit, OnDestroy {
    @Input() image: string;
    @Input() klass = '';
    @Input() title = '';
    @Input() wrapperClass = 'sicon';

    images$: Observable<ThemeImageMap> = this.themeImagesStore.images$;

    imageSig = signal<any>({});

    protected subs: Subscription[] = [];

    constructor(protected themeImagesStore: ThemeImagesStore) {
    }

    ngOnInit(): void {
        this.subs = [];
        this.subs.push(this.images$.pipe(
            filter(img => img !== null),
            map((images) => ({images})),
            tap(data => this.getImage(data, this.image)),
        ).subscribe());
    }

    ngOnDestroy() {
        this.subs.forEach(sub => sub.unsubscribe());
        this.subs = [];
    }

    getImage(vm: { images: ThemeImageMap }, image: string): void {
        if (!vm || !vm.images || Object.keys(vm.images).length < 1) {
            return null;
        }
    
        const foundImage = vm.images[image];
    
        if (!foundImage) {
            // console.warn(`Image with name '${image}' not found`);
            // console.log('Available images:', vm.images);
    
            const fallbackValues: { [key: string]: string } = {
                'Events': 'FP_events',
                'Locations': 'Markers_Maps',
                'Knowledge Base': 'AOK_KnowledgeBase',
                'Projects - Templates': 'AM_TaskTemplates',
                'Targets - Lists': 'ProspectLists',
                'Products - Categories': 'AOS_Product_Categories',
                'PDF - Templates': 'AOS_PDF_Templates',
                'KB - Categories': 'Kb_Cat',
                'Sales': 'icon_Charts_GroupBy_32',  
                'Email - Templates': 'Emails',  
                'Marketing': 'CampaignLog',  
                'Support': 'Overview',  
                'Activities': 'Activities',  
                'Alerts': 'icon_CampaignLog_32',  
                'Business Hours': 'icon_AOBH_BusinessHours_32',  
                'Collaboration': 'Process_Audit',  
                'Resource Calendar': 'Calendar',  
                'Security Suite Management': 'SecurityGroups',  
                'Maps - Address Cache': 'icon_Maps_32',  
                'Maps - Areas': 'icon_Areas_Maps_32',  
                'Maps - Markers': 'icon_Markers_Maps_32',  
                'Scheduled Reports': 'icon_Reports_32',
                'Projects': 'Project2',  
            };
    
            const fallbackImage = fallbackValues[image];
    
            if (fallbackImage) {
                this.imageSig.update(() => vm.images[fallbackImage]);
            } else {
                // console.warn(`No fallback image defined for '${image}'`);
            }
        } else {
            this.imageSig.update(() => foundImage);
        }
    }
    
    
}
