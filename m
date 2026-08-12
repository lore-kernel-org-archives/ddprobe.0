Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478CB2737FC
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786500034; cv=none; b=faIakA1RgWClMvu+LUjyh3yRfl3J1e3xsjfbewJHFyGMq5tnQQYKVFFlaxhHOVCjqS/CwhcvW3jjhZrmwFxKXW/Isjg4fKjUhHLyrSNAXZqQVM1Q+5yXDYKuZmFeCISKMLANCPiyqXGdVnfxrx8JG2R2U6/JKpl6J0fNjd4KelM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786500034; c=relaxed/simple;
	bh=4iWpBFBxXxB7T9ngqHXc+uR0EQerRN2lMRPJ/asms/0=;
	h=To:Subject:From:Message-Id:Date; b=CYqVSdjjvD44///zZgSyOoovvgBMFJC4sXCrzGTv9lRaOoCDgJM4Siep+iNR9vKm6OjJN5n/tpXudYF1lNxpGK0aLPiw+i7716p2hLua79aTIaS9j0Hrp+PQxni/uyOmvypGOR4gozgc5JuiEHHFQ8fGBVZQl8EsSjDcKOOvU78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4EjwkWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4EjwkWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786500033;
	bh=4iWpBFBxXxB7T9ngqHXc+uR0EQerRN2lMRPJ/asms/0=;
	h=To:Subject:From:Date:From;
	b=o4EjwkWEoc6xh6tNRkMexyPvf3N6kYQI0tqr0gNmJyiAplIXJX12FYZBnR666L1w8
	 /RKKlb+ev2CqRR66NvYp0HYiDg4NXRQWKXzxUEqobnq6KxpFaeOtwej5qnBGHvQCsh
	 1SJ18X5/v/lvHtuSiHsGWuWrkee+9V2kl8Ift3cjdsATMyGD0LySAE5VblFakNrQ8j
	 c5oK45cUaBJN0fvQNHNmLLmSNyENT+jWWTpjhB/qnlHmTgD2uNvd3kHI0t/HlUxhtp
	 0iXSIWPRhvWc1UDPN6NObNuUs7Sq9x5pDjFOWfHvkg0fvPUcBhZN1u42ZG2umWXh57
	 hjQ/szDCvU3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE34BC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650003368.25043.955109953249952876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaa19c7a21e950ef031652529d89d34eb3aea50748bc61b6126ff92554f45ae
Date: Wed, 12 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786500033
