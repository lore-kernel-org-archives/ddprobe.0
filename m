Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3232826C39F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767440034; cv=none; b=HHfPOXVnH3b4TlC/Wgo3lgwWpyyzZtOF8sy2XBPx2cppF7y0A5sz/J0JK3oSkRLXFKYMfQMXoIXPu6Urc9WhqWB6zTEcSxNg5jBhxoxVpWqFfOKohloOO08S3u7In4HkChd1NeosbsgxYmPQgcFPd66HtkXOONVG0qIy5yuWTg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767440034; c=relaxed/simple;
	bh=Z4JfYPW09S2DxnElXBKF8gUdnLq8gw5XH/QGoP6mjx4=;
	h=To:Subject:From:Message-Id:Date; b=fx13rVF5dL5BaHt2hR6kjQKhdN1fk8E4Jhz/uhyWhyKMc/ff2AebYLxn0NS/fSw4W889U5MugfWE3G/ZDe88ExPDTzRgCRwhecC3WvYlRop/Mm6SgpDZJee+sp0VJYQFP5D4MACsWORC8jrN+TUtWp3fAgY1ddzHS3m8ol26Ty4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbvkVyG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbvkVyG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD2C19423
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767440033;
	bh=Z4JfYPW09S2DxnElXBKF8gUdnLq8gw5XH/QGoP6mjx4=;
	h=To:Subject:From:Date:From;
	b=mbvkVyG8/yFJxUFcvmQMcXqQnvJdwJtbqPkggQHzaumAwWYrdJMQV/pggYsw+6+PE
	 ZHRLdHbj4w4FUT1+ccjnlaHOwiyT6weC5zbn3UwaU9kodLHq+yc+otSWA8r+r5syNy
	 Sd/H4UjeYOhnm5p/Gg0Hhv+pLvlRX2UKxHwAIPyySSfQDnsZIf/BcXOiWFlE4A5KVe
	 nJi2RkJ+NuFkFGy+GtWRxCwGN6A1kVuZLQiLo9mRYuhUjJdZ1QoFNZjyrUDgSoOMT/
	 82tx9eGk+tpKeSMVzp7LRYbu5ujHA7GjcwhCBotfqwTDgFAMF+Iwl4E0Gy2t6y9abs
	 /uryxbOMNfErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEDFC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744003357.15676.17519150863959370739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff58305fe3a4575465f7ca177e8ffbddc62a21006693748b710ce6453962a241
Date: Sat, 03 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767440033
