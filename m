Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B9C271447
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759960794; cv=none; b=Yrq6RVKK8J3M026we+YxS8yIzw2USZxMF5DdRMTQImffG3rw1yfAuIcJyhv/i3GI5hTwiwWwGkAJhxQvJ5nBb+1bz5T+F49H+Sq7FRE9lQwUcEaUm4bHy5ff6xR1jr2fZyjZeZiCLwRa2GnLtJxI6t8nG74mLjZB6Y9A58pW+n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759960794; c=relaxed/simple;
	bh=9Aximq8r5keKmgcm8NDG9GVQFe3X9R+llSyuwVrGV7U=;
	h=To:Subject:From:Message-Id:Date; b=uM3QD1tWqZDwwLdr60hXNsbMJ4tJEFmeFTWE1Q8RPZNF2FPZif2JwV+mE3rF0XcQaqhpPzxoBDrlD+oxQJ0jGWneEC4pL8jg+URedpED7/3FgIkl2XZmArQON/3kInxifceddt/fi4oqeoaNOf96SfvXm/Qrzxo53kaYmRk1tJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFak5mqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFak5mqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC80AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759960793;
	bh=9Aximq8r5keKmgcm8NDG9GVQFe3X9R+llSyuwVrGV7U=;
	h=To:Subject:From:Date:From;
	b=CFak5mqNwfmW6MFRGzbfkqI/K79KevHJ0n0fJJVWy/phlH3o2JV8P48Cwfox35Gq8
	 E+OOd+PTj2ztClRqbeG+M2BJ/9HlrGC9lF9f253N9cjWHCxU9Lsg0WlBUSywxsZ7hY
	 GsCrGSi3IQS1LIn3yqqMjWrqpmUz2dMBHP3mEowJwnaJRuBe0AXupwui9RKkWFhzr6
	 cATDmluGPIS9V7T6+nfoPtxbApRcRQ6YTfWY7xx/VrGW0WoVBtEW20oEso9fJRAyZb
	 2fLdlUFRUEADrCR7HG/bcdecXLp1nIVhR57t7hGBtC2KjgV8aDnF9484cNYzXIHXPh
	 kJmECJhxSPJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99532CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996079362.9125.4485509525655129160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3027e033d6200b236bf84e3ae3a25f06eda0790c53503d2f839b21055029f532
Date: Wed, 08 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759960793
