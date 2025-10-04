// CDN-Fuel Gas Station Management UI
// Main JavaScript File

let currentStationData = {
    locationId: 0,
    name: "Gas Station",
    owned: false,
    isOwner: false,
    shutoff: false,
    reserves: 0,
    maxReserves: 50000,
    fuelPrice: 3.0,
    balance: 0,
    cost: 2000000,
    taxRate: 10,
    sellPercentage: 60,
    minFuelPrice: 2,
    maxFuelPrice: 16,
    nameChangeEnabled: true,
    nameChangeMinChar: 10,
    nameChangeMaxChar: 25
};

let playerData = {
    balance: 0,
    bankBalance: 0,
    cashBalance: 0
};

// Initialize when document is ready
$(document).ready(function() {
    // Initially hide the UI
    hideUI();

    // Set up event listeners
    setupEventListeners();
    
    // Listen for messages from the game
    window.addEventListener('message', function(event) {
        const data = event.data;
        
        switch (data.action) {
            case 'openUI':
                loadStationData(data.stationData);
                loadPlayerData(data.playerData);
                showMainMenu();
                break;
            case 'updateStationData':
                loadStationData(data.stationData);
                break;
            case 'updatePlayerData':
                loadPlayerData(data.playerData);
                break;
            case 'showNotification':
                showMessageModal(data.title || 'Information', data.message);
                break;
            case 'closeUI':
                hideUI();
                break;
        }
    });
});

function loadStationData(data) {
    // Update the current station data
    currentStationData = {
        ...currentStationData,
        ...data
    };
    
    // Update UI elements with the new data
    updateStationUI();
}

function loadPlayerData(data) {
    // Update player data
    playerData = {
        ...playerData,
        ...data
    };
    
    // Update UI elements that display player data
    updatePlayerUI();
}

function updateStationUI() {
    // Update station name in all menus
    $('#station-name').text(currentStationData.name);
    $('#current-station-name').text(currentStationData.name);
    $('#sell-station-name').text(currentStationData.name);
    $('#purchase-station-name').text(currentStationData.name);
    
    // Update location information
    $('#location-id').text(`Location #${currentStationData.locationId}`);
    
    // Update shutoff status
    const shutoffStatus = currentStationData.shutoff ? 'DISABLED' : 'ENABLED';
    const shutoffClass = currentStationData.shutoff ? 'disabled' : 'enabled';
    $('#shutoff-status').text(shutoffStatus).removeClass('enabled disabled').addClass(shutoffClass);
    
    // Update reserves amount
    const reservesPercentage = (currentStationData.reserves / currentStationData.maxReserves) * 100;
    $('#reserves-amount').text(`${numberWithCommas(currentStationData.reserves)} L`);
    $('#reserves-progress').css('width', `${reservesPercentage}%`);
    $('#reserves-subtitle').text(`${numberWithCommas(currentStationData.reserves)} / ${numberWithCommas(currentStationData.maxReserves)} Liters`);
    
    // Update reserve purchase menu
    $('#current-reserves').text(`${numberWithCommas(currentStationData.reserves)} L`);
    $('#max-reserves').text(`/ ${numberWithCommas(currentStationData.maxReserves)} L`);
    $('#reserve-purchase-progress').css('width', `${reservesPercentage}%`);
    $('#reserves-price-per-liter').text(`$${currentStationData.reservePrice.toFixed(2)}`);
    
    // Update the max value for reserves slider
    const maxPurchase = currentStationData.maxReserves - currentStationData.reserves;
    $('#reserves-amount-slider').attr('max', maxPurchase);
    $('#reserves-amount-input').attr('max', maxPurchase);
    
    // Update fuel price
    $('#fuel-price').text(`$${currentStationData.fuelPrice.toFixed(2)}`);
    $('#current-fuel-price').text(`$${currentStationData.fuelPrice.toFixed(2)} / L`);
    $('#min-price').text(currentStationData.minFuelPrice.toFixed(2));
    $('#max-price').text(currentStationData.maxFuelPrice.toFixed(2));
    $('#new-price').attr('min', currentStationData.minFuelPrice);
    $('#new-price').attr('max', currentStationData.maxFuelPrice);
    
    // Update station balance
    $('#station-balance').text(`$${numberWithCommas(currentStationData.balance)}`);
    $('#funds-station-balance').text(`$${numberWithCommas(currentStationData.balance)}`);
    $('#withdraw-available-balance').text(`$${numberWithCommas(currentStationData.balance)}`);
    
    // Update purchase information
    const stationCost = currentStationData.cost;
    const taxAmount = stationCost * (currentStationData.taxRate / 100);
    const totalCost = stationCost + taxAmount;
    
    $('#purchase-price').text(`$${numberWithCommas(stationCost)}`);
    $('#purchase-tax').text(`+$${numberWithCommas(taxAmount)} (Tax)`);
    
    // Update sell information
    const sellPrice = stationCost * (currentStationData.sellPercentage / 100);
    $('#sell-price').text(`$${numberWithCommas(sellPrice)}`);
    $('#sell-percentage').text(`${currentStationData.sellPercentage}%`);
    
    // Enable/disable options based on ownership
    if (currentStationData.owned) {
        $('#purchase-station').addClass('disabled');
    } else {
        $('#purchase-station').removeClass('disabled');
    }
    
    if (currentStationData.isOwner) {
        $('#manage-station').removeClass('disabled');
    } else {
        $('#manage-station').addClass('disabled');
    }
    
    // Enable/disable name change option
    if (!currentStationData.nameChangeEnabled) {
        $('#change-station-name').addClass('disabled');
    } else {
        $('#change-station-name').removeClass('disabled');
    }
    
    // Update name change limits
    $('#name-min-chars').text(currentStationData.nameChangeMinChar);
    $('#name-max-chars').text(currentStationData.nameChangeMaxChar);
    $('#new-name').attr('maxlength', currentStationData.nameChangeMaxChar);
    
    // Disable purchase reserves if full
    if (currentStationData.reserves >= currentStationData.maxReserves) {
        $('#purchase-reserves').addClass('disabled');
    } else {
        $('#purchase-reserves').removeClass('disabled');
    }
}

function updatePlayerUI() {
    // Update player balance in relevant sections
    $('#player-balance').text(`$${numberWithCommas(playerData.bankBalance)}`);
    $('#deposit-player-balance').text(`$${numberWithCommas(playerData.bankBalance)}`);
}

function showMainMenu() {
    hideAllMenus();
    $('#main-menu').fadeIn(300);
    $('#main-container').show();
}

function showManagementMenu() {
    hideAllMenus();
    $('#management-menu').fadeIn(300);
}

function showPurchaseMenu() {
    hideAllMenus();
    $('#purchase-menu').fadeIn(300);
}

function showFundsMenu() {
    hideAllMenus();
    $('#funds-menu').fadeIn(300);
}

function showPriceMenu() {
    hideAllMenus();
    $('#price-menu').fadeIn(300);
    $('#new-price').val(currentStationData.fuelPrice.toFixed(2));
}

function showReservesMenu() {
    hideAllMenus();
    $('#reserves-menu').fadeIn(300);
    
    // Set default values
    const maxPurchase = currentStationData.maxReserves - currentStationData.reserves;
    const defaultAmount = Math.min(1000, maxPurchase);
    
    $('#reserves-amount-slider').val(defaultAmount);
    $('#reserves-amount-input').val(defaultAmount);
    
    // Update the total calculation
    updateReservesCalculation(defaultAmount);
}

function showRenameMenu() {
    hideAllMenus();
    $('#rename-menu').fadeIn(300);
    $('#new-name').val(currentStationData.name);
    updateCharCount();
}

function showSellMenu() {
    hideAllMenus();
    $('#sell-menu').fadeIn(300);
}

function showWithdrawMenu() {
    hideAllMenus();
    $('#withdraw-menu').fadeIn(300);
    $('#withdraw-amount').val('');
}

function showDepositMenu() {
    hideAllMenus();
    $('#deposit-menu').fadeIn(300);
    $('#deposit-amount').val('');
}

function hideAllMenus() {
    $('.menu-container').hide();
}

function hideUI() {
    $('#main-container').hide();
    hideAllMenus();
}

function showMessageModal(title, message) {
    $('#modal-title').text(title);
    $('#modal-message').html(message);
    $('#message-modal').css('display', 'flex');
}

function hideMessageModal() {
    $('#message-modal').hide();
}

function showConfirmModal(title, message, onConfirm) {
    $('#confirm-modal-title').text(title);
    $('#confirm-modal-message').html(message);
    $('#confirm-modal').css('display', 'flex');
    
    // Store the callback for later
    $('#confirm-modal-ok').off('click').on('click', function() {
        if (typeof onConfirm === 'function') {
            onConfirm();
        }
        $('#confirm-modal').hide();
    });
}

function hideConfirmModal() {
    $('#confirm-modal').hide();
}

function updateReservesCalculation(amount) {
    const pricePerLiter = currentStationData.reservePrice;
    const totalAmount = amount * pricePerLiter;
    const taxAmount = totalAmount * (currentStationData.taxRate / 100);
    const totalPrice = totalAmount + taxAmount;
    
    $('#reserves-total-amount').text(`$${numberWithCommas(totalAmount.toFixed(2))}`);
    $('#reserves-tax-amount').text(`$${numberWithCommas(taxAmount.toFixed(2))}`);
    $('#reserves-total-price').text(`$${numberWithCommas(totalPrice.toFixed(2))}`);
}

function updateCharCount() {
    const currentLength = $('#new-name').val().length;
    $('#name-char-count').text(currentLength);
    
    // Add visual feedback if below minimum
    if (currentLength < currentStationData.nameChangeMinChar) {
        $('#name-char-count').css('color', '#e74c3c');
    } else {
        $('#name-char-count').css('color', '');
    }
}

function handleEmergencyShutoff() {
    // Send data to the FiveM client
    $.post('https://cdn-fuel/toggleEmergencyShutoff', JSON.stringify({
        location: currentStationData.locationId
    }));
    
    // Update UI immediately for responsive feel
    currentStationData.shutoff = !currentStationData.shutoff;
    updateStationUI();
}

function handlePurchaseStation() {
    if (currentStationData.owned) {
        showMessageModal('Already Owned', 'This gas station is already owned by someone.');
        return;
    }
    
    if (playerData.bankBalance < (currentStationData.cost + (currentStationData.cost * currentStationData.taxRate / 100))) {
        showMessageModal('Insufficient Funds', 'You do not have enough money in your bank account to purchase this gas station.');
        return;
    }
    
    showConfirmModal('Confirm Purchase', `Are you sure you want to purchase ${currentStationData.name} for $${numberWithCommas(currentStationData.cost)}?`, function() {
        $.post('https://cdn-fuel/purchaseStation', JSON.stringify({
            location: currentStationData.locationId
        }));
        
        setTimeout(function() {
            $.post('https://cdn-fuel/closeUI', JSON.stringify({}));
            $('#main-container').hide();
            hideAllMenus();
            SetNuiFocus(false, false);
        }, 500);
    });
}

function handleSellStation() {
    const sellPrice = currentStationData.cost * (currentStationData.sellPercentage / 100);
    
    showConfirmModal('Confirm Sale', `Are you sure you want to sell ${currentStationData.name} for $${numberWithCommas(sellPrice)}? This action cannot be undone.`, function() {
        $.post('https://cdn-fuel/sellStation', JSON.stringify({
            location: currentStationData.locationId,
            salePrice: sellPrice
        }));
    });
}

function handleChangePrice() {
    const newPrice = parseFloat($('#new-price').val());
    
    if (isNaN(newPrice) || newPrice < currentStationData.minFuelPrice || newPrice > currentStationData.maxFuelPrice) {
        showMessageModal('Invalid Price', `Please enter a valid price between $${currentStationData.minFuelPrice.toFixed(2)} and $${currentStationData.maxFuelPrice.toFixed(2)}.`);
        return;
    }
    
    $.post('https://cdn-fuel/changeFuelPrice', JSON.stringify({
        location: currentStationData.locationId,
        price: newPrice
    }));
    
    // Update local data and UI
    currentStationData.fuelPrice = newPrice;
    updateStationUI();
    showManagementMenu();
}

function handlePurchaseReserves() {
    const amount = parseInt($('#reserves-amount-input').val());
    const maxPurchase = currentStationData.maxReserves - currentStationData.reserves;
    
    if (isNaN(amount) || amount < 1) {
        showMessageModal('Invalid Amount', 'Please enter a valid amount greater than 0.');
        return;
    }
    
    if (amount > maxPurchase) {
        showMessageModal('Too Much', `You can only purchase up to ${numberWithCommas(maxPurchase)} liters more. The reserve tank cannot hold more than ${numberWithCommas(currentStationData.maxReserves)} liters.`);
        return;
    }
    
    const pricePerLiter = currentStationData.reservePrice;
    const totalAmount = amount * pricePerLiter;
    const taxAmount = totalAmount * (currentStationData.taxRate / 100);
    const totalPrice = totalAmount + taxAmount;
    
    if (playerData.bankBalance < totalPrice) {
        showMessageModal('Insufficient Funds', 'You do not have enough money in your bank account to make this purchase.');
        return;
    }
    
    showConfirmModal('Confirm Purchase', `Are you sure you want to purchase ${numberWithCommas(amount)} liters of fuel for $${numberWithCommas(totalPrice.toFixed(2))}?`, function() {
        $.post('https://cdn-fuel/purchaseReserves', JSON.stringify({
            location: currentStationData.locationId,
            amount: amount,
            price: totalPrice
        }));
    });
}

function handleChangeName() {
    const newName = $('#new-name').val();
    
    if (newName.length < currentStationData.nameChangeMinChar) {
        showMessageModal('Name Too Short', `Station name must be at least ${currentStationData.nameChangeMinChar} characters long.`);
        return;
    }
    
    if (newName.length > currentStationData.nameChangeMaxChar) {
        showMessageModal('Name Too Long', `Station name cannot be longer than ${currentStationData.nameChangeMaxChar} characters.`);
        return;
    }
    
    $.post('https://cdn-fuel/changeStationName', JSON.stringify({
        location: currentStationData.locationId,
        name: newName
    }));
    
    // Update local data and UI
    currentStationData.name = newName;
    updateStationUI();
    showManagementMenu();
}

function handleWithdrawFunds() {
    const amount = parseInt($('#withdraw-amount').val());
    
    if (isNaN(amount) || amount < 1) {
        showMessageModal('Invalid Amount', 'Please enter a valid amount greater than 0.');
        return;
    }
    
    if (amount > currentStationData.balance) {
        showMessageModal('Not Enough Funds', 'You cannot withdraw more than the station has in its account.');
        return;
    }
    
    $.post('https://cdn-fuel/withdrawFunds', JSON.stringify({
        location: currentStationData.locationId,
        amount: amount
    }));
    
    // Update local data for responsive feel
    currentStationData.balance -= amount;
    playerData.bankBalance += amount;
    updateStationUI();
    updatePlayerUI();
    showFundsMenu();
}

function handleDepositFunds() {
    const amount = parseInt($('#deposit-amount').val());
    
    if (isNaN(amount) || amount < 1) {
        showMessageModal('Invalid Amount', 'Please enter a valid amount greater than 0.');
        return;
    }
    
    if (amount > playerData.bankBalance) {
        showMessageModal('Not Enough Funds', 'You do not have enough money in your bank account.');
        return;
    }
    
    $.post('https://cdn-fuel/depositFunds', JSON.stringify({
        location: currentStationData.locationId,
        amount: amount
    }));
    
    // Update local data for responsive feel
    currentStationData.balance += amount;
    playerData.bankBalance -= amount;
    updateStationUI();
    updatePlayerUI();
    showFundsMenu();
}

function setupEventListeners() {
    // Main Menu Options
    $('#manage-station').on('click', function() {
        if (!$(this).hasClass('disabled')) {
            showManagementMenu();
        }
    });
    
    $('#purchase-station').on('click', function() {
        if (!$(this).hasClass('disabled')) {
            showPurchaseMenu();
        }
    });
    
    $('#emergency-shutoff').on('click', function() {
        handleEmergencyShutoff();
    });
    
    $('#close-menu').on('click', function() {
        $.post('https://cdn-fuel/closeUI', JSON.stringify({}));
        $('#main-container').hide();
        hideAllMenus();
    });

    $('#cancel-purchase, #cancel-price, #cancel-reserves, #cancel-name, #cancel-sell, #cancel-withdraw, #cancel-deposit').on('click', function() {
        $.post('https://cdn-fuel/closeUI', JSON.stringify({}));
        $('#main-container').hide();
        hideAllMenus();
    });
    
    // Management Menu Options
    $('#management-back').on('click', function() {
        showMainMenu();
    });
    
    $('#purchase-reserves').on('click', function() {
        if (!$(this).hasClass('disabled')) {
            showReservesMenu();
        }
    });
    
    $('#change-fuel-price').on('click', function() {
        showPriceMenu();
    });
    
    $('#manage-funds').on('click', function() {
        showFundsMenu();
    });
    
    $('#change-station-name').on('click', function() {
        if (!$(this).hasClass('disabled')) {
            showRenameMenu();
        }
    });
    
    $('#sell-station').on('click', function() {
        showSellMenu();
    });
    
    // Purchase Menu
    $('#purchase-back').on('click', function() {
        showMainMenu();
    });
    
    $('#confirm-purchase').on('click', function() {
        handlePurchaseStation();
    });
    
    $('#cancel-purchase').on('click', function() {
        $.post('https://cdn-fuel/closeUI', JSON.stringify({}));
        $('#main-container').hide();
        hideAllMenus();
    });
    
    // Funds Menu
    $('#funds-back').on('click', function() {
        showManagementMenu();
    });
    
    $('#withdraw-funds').on('click', function() {
        showWithdrawMenu();
    });
    
    $('#deposit-funds').on('click', function() {
        showDepositMenu();
    });
    
    // Price Menu
    $('#price-back').on('click', function() {
        showManagementMenu();
    });
    
    $('#save-price').on('click', function() {
        handleChangePrice();
    });
    
    $('#cancel-price').on('click', function() {
        showManagementMenu();
    });
    
    // Reserves Menu
    $('#reserves-back').on('click', function() {
        showManagementMenu();
    });
    
    $('#reserves-amount-slider').on('input', function() {
        const value = $(this).val();
        $('#reserves-amount-input').val(value);
        updateReservesCalculation(value);
    });
    
    $('#reserves-amount-input').on('input', function() {
        const value = $(this).val();
        $('#reserves-amount-slider').val(value);
        updateReservesCalculation(value);
    });
    
    $('#purchase-reserves-confirm').on('click', function() {
        handlePurchaseReserves();
    });
    
    $('#cancel-reserves').on('click', function() {
        showManagementMenu();
    });
    
    // Rename Menu
    $('#rename-back').on('click', function() {
        showManagementMenu();
    });
    
    $('#new-name').on('input', function() {
        updateCharCount();
    });
    
    $('#save-name').on('click', function() {
        handleChangeName();
    });
    
    $('#cancel-name').on('click', function() {
        showManagementMenu();
    });
    
    // Sell Menu
    $('#sell-back').on('click', function() {
        showManagementMenu();
    });
    
    $('#confirm-sell').on('click', function() {
        handleSellStation();
    });
    
    $('#cancel-sell').on('click', function() {
        showManagementMenu();
    });
    
    // Withdraw Menu
    $('#withdraw-back').on('click', function() {
        showFundsMenu();
    });
    
    $('#withdraw-menu .quick-amount').on('click', function() {
        const amount = $(this).data('amount');
        if (amount === 'max') {
            $('#withdraw-amount').val(currentStationData.balance);
        } else {
            $('#withdraw-amount').val(amount);
        }
    });
    
    $('#confirm-withdraw').on('click', function() {
        handleWithdrawFunds();
    });
    
    $('#cancel-withdraw').on('click', function() {
        showFundsMenu();
    });
    
    // Deposit Menu
    $('#deposit-back').on('click', function() {
        showFundsMenu();
    });
    
    $('#deposit-menu .quick-amount').on('click', function() {
        const amount = $(this).data('amount');
        if (amount === 'max') {
            $('#deposit-amount').val(playerData.bankBalance);
        } else {
            $('#deposit-amount').val(amount);
        }
    });
    
    $('#confirm-deposit').on('click', function() {
        handleDepositFunds();
    });
    
    $('#cancel-deposit').on('click', function() {
        showFundsMenu();
    });
    
    // Modal Buttons
    $('#modal-ok, #close-modal').on('click', function() {
        hideMessageModal();
    });
    
    $('#confirm-modal-cancel, #close-confirm-modal').on('click', function() {
        hideConfirmModal();
    });
    
    // Close UI when ESC is pressed
    $(document).keyup(function(e) {
        if (e.keyCode === 27) { // ESC key
            $.post('https://cdn-fuel/closeUI', JSON.stringify({}));
            $('#main-container').hide();
            hideAllMenus();
        }
    });
}

// Helper function to format numbers with commas
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}