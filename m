Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598CE63C
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 02:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69CAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692413648;
	bh=dQsSXCh+8kMueKaum6qihD9vFugYu/NpTyNnxDuxMCE=;
	h=To:Subject:From:Date:From;
	b=k6nvZoM1SEWkA2SJ8zNf8Rc8ojnagkZojxIohVZXGCbHyoqfzjtJ2z5ylLZF+Bl1b
	 ZsSkZll5Xj+TEZWfJqbX9wP4AoOw6kuIpB70KxxD+hA2dU40d6nfGoMgdXIQGY1Oyg
	 /ENYdFAnc6uL0407Ax2yq5n+TtNDhrcJOUw5pwe19k2psC8ANDSk1Qw2Iho1dQ8s2q
	 O5at3T5MIGeVUldOyMjIcfxBnObYtU/BgWKqKtpkGc2nLG3io+fZqK0/jIqdEZcPM7
	 MqbwFtG6XkRXMu6NYqeFzDtAJCgKCQc1IxEDp6Ste2GsxTfXDqiE/CQoLqIQi0Tcsq
	 9J70knD0YmG6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8805EE49A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 02:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169241364868.17156.4805879021650539661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cd8cf9410e25acfc521c7f62a1e046e37d1469448b2943e81feef05ef51ba3
Date: Sat, 19 Aug 2023 02:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692413648
