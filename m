Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E386F3C2D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81453C433F0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674063087;
	bh=U+Irg9OcBdTdmQuMWS2B/lRuC4mvLykfwEnPdWg1njQ=;
	h=To:Subject:From:Date:From;
	b=EHqqT4qjmJa3pM88yeFjc+dleVNQmU/KSFgY+nJ3xaOwu3kOw33IoV8I2WQUAEueB
	 /PTCMAyV338itGMwkfw3c0jfFFf88MtVZK/cZWUl3daDALbw0crMQKYV6mrRRl8ugK
	 VBjBTns8K3U6alCHNl2BA3Ee5xIWouGP/xSTY3SbfczNIrKcJawsdR1pGGJHuRtx5m
	 ft/cG2G5mywVV6IxZDWUlejYvotgZb/E0HAG/cB8vBfCZUSSEznkyqUftfTKCBqCon
	 kW3Pfb1goFcCoCzlQj/9MkXoATHI5Ud3e3D7LYEIUQgqtlL7FDNKn9bQKLa6NEMum5
	 dVed8mjvHNf4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B2BC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406308740.6088.17654945767421669346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559850a7bebbc8aee773e82365e0f82ade48ca5d0b4c9c1d3fa93a422417d2e7
Date: Wed, 18 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674063087
