Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA865C8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 20:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1791C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 20:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678651625;
	bh=seB1JmHjTsov2oHvPAf29bgUfvd3I/0Oe8buAxiBdjI=;
	h=To:Subject:From:Date:From;
	b=RHjTTdtVqBuBBHVtT+7jhnyz+q2JwH9+rK3J8gNFcmst32ZhVfsbq5iYi7t4UItxK
	 MiX8PjZI8u7mszO4GSawkiRaItOpGu63Ijb/fsjbJqJPCqsFxeQeQB6EDMOQwHjgJk
	 +4gRko5BSfWXheWpRqYn+XoWCaCClQZcmlyKC/xqHtP7frg2D4z3BfF+2SU0vgWavY
	 EW6LSc+EE0O54RNqmF2vlXBxKT5VH9G5eyAGM9YjTVsHLiOY5tDpBl1bi3AtE4nKvz
	 8dkdwocfd65HYdsRaqCQZsge1uRMz+2je3OP1K2VWZDKbxMh4Xl5RjR1rQoS0YL2Z1
	 y0EGcLKXcA7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE714C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 20:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865162576.32200.12930654619896140702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1189338f4386ad3c50e085c623258a3c1d786a2bfded0e5b84b1387452e58f
Date: Sun, 12 Mar 2023 20:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678651625
