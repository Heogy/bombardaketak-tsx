import React, { useState } from "react";

interface SearchableInputProps {
  options: string[];
  placeholder?: string;
  setAL: (value:string)=> void;
  al: string;
}

const SearchableInput: React.FC<SearchableInputProps> = (props: SearchableInputProps) => {
  const [filteredOptions, setFilteredOptions] = useState<string[]>(props.options); // Filtered list
  const [showList, setShowList] = useState<boolean>(false); // Toggle list visibility
  const [selectedOption, setSelectedOption] = useState<string>(""); // Selected option

  // Handle input change and filter the options
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    props.setAL(value);
    setFilteredOptions(
      props.options.filter((option) =>
        option.toLowerCase().includes(value.toLowerCase()) // Case-insensitive filtering
      )
    );
    setShowList(true); // Show the list while searching
  };

  // Handle selecting an option
  const handleOptionSelect = (option: string) => {
    setSelectedOption(option);
    setShowList(false); // Hide the list after selection
    props.setAL(option)
  };

  // Handle blur (click outside) to close the dropdown
  const handleBlur = () => {
    setTimeout(() => setShowList(false), 100); // Delay to allow option click
  };
// Handle Enter key to validate selection
const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === "Enter" && filteredOptions.length > 0) {
      handleOptionSelect(filteredOptions[0]); // Select the first filtered option
    }
  };
  return (
    <div style={styles.container}>
      <input
        type="text"
        value={props.al}
        onChange={handleInputChange}
        onFocus={() => setShowList(true)} // Show the list when input is focused
        onBlur={handleBlur} // Handle closing the list on blur
        onKeyDown={handleKeyDown} // Handle Enter key
        placeholder={props.placeholder}
        style={styles.input}
      />
      {showList && (
        <ul style={styles.list}>
          {filteredOptions.length > 0 ? (
            filteredOptions.map((option, index) => (
              <li
                key={index}
                onClick={() => handleOptionSelect(option)}
                style={styles.listItem}
              >
                {option}
              </li>
            ))
          ) : (
            <li style={styles.noOption}>No results found</li>
          )}
        </ul>
      )}
    </div>
  );
};

// Inline styles for the component
const styles = {
  container: {
    position: "relative" as const,
    maxWidth: "300px",
    margin: "0 auto",
  },
  input: {
    width: "100%",
    padding: "10px",
    border: "1px solid #ccc",
    borderRadius: "4px",
    fontSize: "16px",
    boxSizing: "border-box" as const,
  },
  list: {
    position: "absolute" as const,
    top: "100%",
    left: 0,
    right: 0,
    maxHeight: "150px",
    overflowY: "auto" as const,
    margin: 0,
    padding: 0,
    listStyle: "none" as const,
    border: "1px solid #ccc",
    borderRadius: "4px",
    backgroundColor: "#fff",
    zIndex: 1,
  },
  listItem: {
    padding: "10px",
    cursor: "pointer",
    borderBottom: "1px solid #ddd",
    backgroundColor: "#fff",
  },
  noOption: {
    padding: "10px",
    color: "#888",
  },
  selected: {
    marginTop: "10px",
    fontSize: "14px",
    color: "#333",
  },
};

export default SearchableInput;




