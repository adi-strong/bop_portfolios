import {useState} from "react";
import {useUpdateTreatmentCategoryMutation} from "./treatmentCategoryApiSlice";
import toast from "react-hot-toast";
import {AppEditModal} from "../../components";
import AppInputField from "../../components/forms/AppInputField";
import {handleChange} from "../../services/handleFormsFieldsServices";

export const EditTreatmentCategory = ({show, onHide, data}) => {
  const [category, setCategory] = useState(data)
  const [updateTreatmentCategory, {isLoading, isError, error}] = useUpdateTreatmentCategoryMutation()
  let apiErrors = {name: null}

  async function onSubmit() {
    apiErrors = {name: null}
    try {
      const formData = await updateTreatmentCategory(category)
      if (!formData.error) {
        toast.success('Modification bien efféctuée.')
        onHide()
      }
    }
    catch (e) { }
  }

  if (isError) {
    const { violations } = error.data
    if (violations) {
      violations.forEach(({ propertyPath, message }) => {
        apiErrors[propertyPath] = message;
      });
    }
  }

  return (
    <>
      <AppEditModal
        loader={isLoading}
        onHide={onHide}
        show={show}
        onEdit={onSubmit}>
        <AppInputField
          required
          autofocus
          disabled={isLoading}
          label={<>Catégorie <i className='text-danger'>*</i></>}
          name='name'
          value={category.name}
          onChange={(e) => handleChange(e, category, setCategory)}
          placeholder='Libellé'
          error={apiErrors.name} />
      </AppEditModal>
    </>
  )
}
