Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0803A6AC0
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InQfG/lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DBDC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700999296;
	bh=TiUAw7FocumLDI5iAjyqIuUPDmxiEq3izunkB3+bQr8=;
	h=To:Subject:From:Date:From;
	b=InQfG/loJ+g8DrkakeZwXJcbTw6GVzs0J/EIyFZbdwQth9u0qVqtowMT4QC15gM25
	 wyp0L7UiSn/ggaQYDau88KCrlq62GBjnskypYt+bLrlxsnDZGBMd1z1RExhdSS2P3O
	 rC6ProrO03Q8soBX/wvdtahRB5hjHcSjpMh0aYcKCgGuxtgh+1+FP4eGlAuHKg+D7q
	 7QoKnhJ/3ZGHY+cHd1CGTchSdwuoVyp25V9fzvHHFFPX6IcZDTQxrh6nzvZLuYPsbC
	 ajVAKna9FpY9KaYb4x0n76d7wnX7qg4kNS+3VJwQ5DfaDqh2c4M5XUHST21d2nzgS7
	 4Dx22Nfrl59BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D010C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170099929637.11337.9876690698444670227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99918b19273fb06d2e54e772f35cb44ff422b0f610d95de8ca45c0ae5f5aeb2
Date: Sun, 26 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700999296
