Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC0D8F52
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 12:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65D4C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691152388;
	bh=0qDZhOsX7OFD58/zGgqXZ1dm8/V0jABT2cAcrNhixa0=;
	h=To:Subject:From:Date:From;
	b=vPOQFXvuaMpD+HkoWr8yhsY4Qd0yznU+H0Tcc1jhlT4d4vPrFLp+K2OoZkBUkz0Vt
	 uXCYgcEwV8FuOox77JgQ+Q8e0/TDj/CM+VIVLcDOogFLCs1O7g4I/czpuv9I7uYWUq
	 n1jOPx6dFI1C611Ogwfg9n1L1qqDyuVTi4ns+cZa1mAjAOMUqLQOPrRUk734SaiaKE
	 JBca/ra63a+v5Gsmb0GTQ2MBMB+77R46gCzfamAgPZhZKotz89ajHo7Pq5oaZzawps
	 3UGsLzvKo1tpWZn3DGWsAhzxwqoWZLp1qX7ASpJwDHEeqv0jp2y0HYy4mV8XTsBO4P
	 E7afo8y1EDy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8372C00528
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169115238868.28692.12678271560237183292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b16182f94d5e5d7706d0809f45e20cb8e6f258e1513ae84fd89051b1a40e440
Date: Fri, 04 Aug 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691152388
