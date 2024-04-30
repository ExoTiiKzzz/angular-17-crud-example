import { Tutorial } from './tutorial.model';

import { HttpClientTestingModule } from '@angular/common/http/testing';

describe('Tutorial', () => {
  it('should create an instance', () => {
    expect(new Tutorial()).toBeTruthy();
  });
});
