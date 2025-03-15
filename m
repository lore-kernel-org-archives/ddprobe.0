Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F9F1F78E6
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742032734; cv=none; b=jFkkI+i+xCUMAIKx/7BW+OATui2CrbKqzrMpcFOZOSkDkNCS8mn5fwVcyHKv8cWqIHf35YU0Bva7++/mr9ICFdZpYocAkSYNEElhRWNNATc43rZB6MUNdyZ2WU6WTJHrlFOyQfU2mElCVERHh0PzuKSna7F7qaX0MdvkK7XbhIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742032734; c=relaxed/simple;
	bh=UQoOJPGPjZgOLl9G4/Jy06yK58gX9+V4LzThSHZA7R0=;
	h=To:Subject:From:Message-Id:Date; b=NFtz+5doTpKZhpnU+kIirC97EqAm4Ca7yrOXW6eMswjZLz1nylwIEQBTe1kqhFZgUtz4MXrPbwM0dQCvq9npNnx9jqDSWnHXI78fLoy2zsrt/OtvTgdgZ5DrOME87G+mA6R0s4vXh10KQFDabTLYjEqOOEML2J/ltqZvj+wABTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvjzkCVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvjzkCVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA31BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742032733;
	bh=UQoOJPGPjZgOLl9G4/Jy06yK58gX9+V4LzThSHZA7R0=;
	h=To:Subject:From:Date:From;
	b=PvjzkCVZ22EGzBtsE87l1hZ5oCJKS+HxmXCeOJDGMp9m1b6FEjZ0HyQT3MU8QpJR2
	 d4nz3ikkQJ8HIjQL0K4loibMchUssi6crqATpb/tCDsmc2pT2Af6qNEfJKFZsDCRJK
	 Fuc7eEE3zfaZhE8axQkROji8TpJtuvQ9pcYW5FvYCX6l5Peyfy6pYv3rCI40FWbQta
	 SDL1F6jb6rMbfoVMCxqSopCLCY6FPcyByjcZpISytJeHeHE6VQWBR3telsFxQt9dB2
	 5I2xsx0g/U+57W3NWYfbh/2XfSsIzZdXzlEcv86BvW23prLYcxw2DiSTb51cUSZLG3
	 E06GDq/j83pIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B7EC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203273358.388.6517065697939070533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d753897c30f4b90a3799c9b88a35cc98a2e1e966c98adb94461725c28563b81
Date: Sat, 15 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742032733
