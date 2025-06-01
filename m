Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4861C8828
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748743794; cv=none; b=EMnHcW5g9q+Be3rU9zJwjWONyEkiXQjZEaBPasCHXDmOJ6d/4YZY3tqchHqx/uMxf/LtHznv9S8VS5ua9X2m0hAz/fNEpQThEJsPSgfZhhuvJehg9+U1A/U/N4YHpmCWefXrb/TK/Xdvir7Lp6vIvw+DiGXTmQRw8B5XXeTTjek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748743794; c=relaxed/simple;
	bh=AkK4l5goNHjlIUMn6aB1AxbdX9XqIyrNXYWfXuyS5Ps=;
	h=To:Subject:From:Message-Id:Date; b=erGYUfShlt6sYCGiR/7b5XOo8zai2oKbxxNDaRHwrxzbzndbBFzicBsuPFJybF7Gay5DQ92UoCgqPrYHWpXHhqkHUrue3KsiV1tjoxYas53Oe3OfuJPUcXVYFR9x6VItqtrXhYMYwUoSBN9sWxM0vgjp2RXbt1ajkp3GVEkcP+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYNAe4pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYNAe4pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748743793;
	bh=AkK4l5goNHjlIUMn6aB1AxbdX9XqIyrNXYWfXuyS5Ps=;
	h=To:Subject:From:Date:From;
	b=iYNAe4pWpG++aod4kDJegoEbNGFMUhMWVUFBBBOwIrGMezdbvMPsuuHGalgD6/cyW
	 D4auXxW+2bbuICcedV3hYZDeubpY7wkCWH7mV4LAwLerJuu3IDurr17h0Nxpy+1E99
	 WIOPISiiyBu0GA8q1GmIkEs7VIY1jl9CZdUnQz2nAHG/VMuHBHuIycUR3OKoUwXhN2
	 0O6aTEnJd4kqADwsOok+KoK5kYtSvOt+LIMI/6Y0JxDA2njxJwyv0sNHPNrGyNY7x9
	 OHBkTswFZot1MbqvU+kQJdhBZj7/sNrdhetBgDgz+IY7kc8+RVk2hqVBDy7AyPDGEs
	 tZkqUxHRiCO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DCC5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874379358.28126.18391905759450501512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a2d8d14bdb16c504f26ffe465e174081a36ed422526528f73bd96df3326402
Date: Sun, 01 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748743793
