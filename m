Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179644A33
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762671594; cv=none; b=ADuGaevFRVIkMGr7+YvH6r/QwRJZpD67eHMFCiiuywACUe8n30MI9oe2fe/eIqngrKUnPOTCNnviGdHUgfLkVrWvObuAIC5LGySbaBeedCuU32pPKaILtcpBKMLn9OTvgPNw+1oVu+wG2OVCOLvR5gxB5j7rKCynuPhxcI/l31k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762671594; c=relaxed/simple;
	bh=mwZ1A0kFk7dtMmd6SHHUmLbWCBRONMZAI1Z6++r0RLo=;
	h=To:Subject:From:Message-Id:Date; b=Z2hL6ucoieeKcNvDF0/nmYCU1/tBs05T0dmU340zeu4PFQdFs1iqSEqP6UAuwUWsLYINqsvuL1K9stLlYv4jQ4Gza2Ls95h6dDYDO6HnerI0d+fpWIvlkepS7O/iQJUdYpf4ISY/mNeQZNo0pPBgU2UjrUzESk/aakOO9GOkYv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlgRUX7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlgRUX7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9AC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762671593;
	bh=mwZ1A0kFk7dtMmd6SHHUmLbWCBRONMZAI1Z6++r0RLo=;
	h=To:Subject:From:Date:From;
	b=hlgRUX7qT6UIBZEPwPPf9M8E84CsnYSWz0PKep8FGLM3Xjh7qrUBKO4o+ZDEnbLx7
	 0CrRZpZ/E1WrPq6mkvUHLd3Xjh6S4dIqnC473tDaAjx7z3IJi6JyJDumvXFHkOygGP
	 zq3tCW0XbcCm5NBDAlKNnkSedNtojsBIa0oIx5nQ3AURvNgP1H1DuTJno24lKImaBC
	 5Ilw0K5tTRyps8lygD+iC0cdCaIHpu1TqA/q7iCvw4C5rWsOOi/vXK0E+95RbWVq9S
	 kmT4wj5T4Zh6bGH4MqFdRZ53Y7volImKcTszDmtlOcqh047Q5G6pTYYWMNPafWGFn9
	 FMDOUjfdGIMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E25CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267159357.30487.1280360909601816373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c51c63def5b504f13227049deeb7cd0a9d6726f3fc56b8d4ce0741c395589fa
Date: Sun, 09 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762671593
