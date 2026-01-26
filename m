Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013AF314B87
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769420634; cv=none; b=oQcSZ7tKMTs6RHKkWNE4BW8zHKyUHgGoA9bqufH2ZqeKLjdZYBWrflKJlmcbvxdJRQNh8+JsJabr130foNVx9um5inCDIImBXgs6QYTnxf1FWXN6AASgKtouqYaH/lpocs5Rtrc93PcTSDvbQcAE+GfvBsLmbkkuaX1dcxbOQ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769420634; c=relaxed/simple;
	bh=TjCSftgL5LE/Wq0z63GUJgO1XUsNLNn2cJwH+MEkiJw=;
	h=To:Subject:From:Message-Id:Date; b=MQrg9e5nZxBxbrQMVjDE1JEgtDPNNWJlx+ZuGYAdP92riw+1E1+8rIqt29qpXA5r1aztLdRVFvOtoyvadwnQXGjDlJmNhaDlt9s/vZRzrBRVs+A9alsvw+Hw5qxLMWfJaqa8xKbkaoIwJir7oCb/fJp/SIMTXKcuL2ipbHvWK9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXIWkZ8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXIWkZ8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769420633;
	bh=TjCSftgL5LE/Wq0z63GUJgO1XUsNLNn2cJwH+MEkiJw=;
	h=To:Subject:From:Date:From;
	b=SXIWkZ8cjVNILzbbkXdTpi6kPabDp5JExg7t3qcUOimPXW6w2Nz9fRx/hFM4vRz/s
	 QaaVBMU5oc8VSs/SWWsrgfPAMbP1kegPnYG6sDN8uj66PNQHScv4+MFIKC7KRJWi4T
	 YczLbaHHVJZ5EMu0wYBwQEL3+lL+/ZimlMMA1S6X8HaB/ZeRgl59jCah2r6P78X2ta
	 KcEjhN84dCenmdHAmdeP75NVbT4LT8LJXIU830Y6Te0F+pGds8f9r9eV2XhaLgxXvT
	 41S1gnKhjR1RtofBWOgHN2M2e9Z2QOXyCHGsJ/J3nhuKoSF0cwtd/omGG/CtDjSJGY
	 qVyZZT+lSOwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F694CF65C4
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942063357.20860.2779831809083719483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd3241dc077642371eb2fcbd891a6f7bdebfafe8858bd4328dd4abb591c80a2
Date: Mon, 26 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769420633
