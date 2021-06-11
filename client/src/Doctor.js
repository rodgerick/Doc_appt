import AxiosContainer from 'axios-container'
import useAxiosOnMount from './hooks/useAxiosOnMount'
import List from './List'

const Doctors = (props) => {
  const { data, loading, error } = useAxiosOnMount('/api/doctors')
  return (
    <AxiosContainer fullError loading={loading} error={error} loaderMessage={'Loading url, please wait.'}>
      <List name='DOCTORS'
        data={data}
        />
    </AxiosContainer>
  )
}
export default Doctors
