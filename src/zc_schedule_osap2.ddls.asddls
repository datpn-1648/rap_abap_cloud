@EndUserText.label: 'Projection view for ZI_SCHEDULE_OSAP2'
@AccessControl.authorizationCheck: #CHECK

@Search.searchable: true
@Metadata.allowExtensions: true

define view entity ZC_SCHEDULE_OSAP2 as projection on ZI_SCHEDULE_OSAP2
{
  key ScheduleUuid,
      CourseBegin,
      CourseUuid,
      @Search.defaultSearchElement: true
      Location,
      @Search.defaultSearchElement: true
      Trainer,
      IsOnline,
      LastChangedAt,
      LocalLastChangedAt,

      /* Associations */
      _Course : redirected to parent ZC_COURSE_OSAP2
}
