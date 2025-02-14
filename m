Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338FB14D28C
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739557734; cv=none; b=jYRIU3kFBhk/KuhtNjpjk22MgJW8dE4xRuUO/37tAizKcXo/drhx7curt/yBFZyMnD33z4KMkFIuWazzsFf3CdNu+L2Aa4o8BknzclQUn7REl3vPZvGxhgnxEJxenhiGGgBjTTtKjP1UWMR6A/kNWR4HwmmKCjcKcHxazPK/5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739557734; c=relaxed/simple;
	bh=v09BViUauJapdNGfDkIVNEHLnjfoc7X1Q3AOR2XA6ZE=;
	h=To:Subject:From:Message-Id:Date; b=DTdCNmnZxaihYnCGBPM1NN6eUDTC9GIAFUAAtjNdlmuY84gTJwMKQSI6VZIoo9EFVPa2OLgv8oipVXnITCizw4H/tEv46PmB3Mr9bJOcH2mZ4HS81oW+gAuokzOQVWzyX2YMmQA0sAS6r+9RoOQ/HoQj6oJzpdkJcoJ2Z7Sl4Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVac67sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVac67sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99EBC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739557733;
	bh=v09BViUauJapdNGfDkIVNEHLnjfoc7X1Q3AOR2XA6ZE=;
	h=To:Subject:From:Date:From;
	b=nVac67sl/sx+mzbUfGQWSVqBmD30tSPGF8J19/FZEEnhZwsTFA+36I3UMTrj9ANKc
	 jXhl3tBxlJD7vF/Mu6ol0jUfDBkxKIXVhHNKD/CYJT5Evx3xgEOsbqFk0fCZCqqd1s
	 j7gSFAZzFOj6v9vLdEeWe7MEx77MPAXcz5YivU4xMf2gm9rQQZEEFneB3QveHiukwc
	 uuHNk05eu0iW20108gqJmlJDXN31/FZcPFeEFnl/nf+OQk3MIW/ydjcXJBb+yk5esy
	 +mZJCvlOgmQ/WCDahm0aGBM9n7RJH73wwmJVqGp8mI42WMz3TJ+YCita0CAt8S//FO
	 0eYHM6V+yElQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96607C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173955773360.11996.8474019056742404336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d38ac2353b8cbfe592ef0c33dfa638032fc58d771ba55428ccd99380be223b4
Date: Fri, 14 Feb 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739557733
