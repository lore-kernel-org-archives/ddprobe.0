Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A487B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 06:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F17C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 06:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675579565;
	bh=euF8AtJ9IcbS6Bpfjhb1PhCuPJyntiFUSBj5Ynolh6Y=;
	h=To:Subject:From:Date:From;
	b=BfBLTA5RG42wQT+yZzTtgI7IQzO44z3XPuK2yiKuc9k+wx2I5bkj918014LDTLdAR
	 KL4UOUeUZdUDnTDKVKMtM3RpSC1nRlXEv7az2htEddlRkdpe4iY1OLSB9AT3OR43rs
	 mYzs+okGoxcZWtu+aXtnKUB9lg2iLBSVw6taLDEjdz7a8+Ui3RJ9AvWcoc2FIDlxL6
	 IpyLlmZDx0iOc19/LL50HwtZuJ0o4CAZZ4bcqqhoG0vSjlusalFkbrymUjfPMFAnxU
	 VFtsUeAL/QwXl1vln4xH/sRWDpC9Zpp7+qj7OnEZwXOPZk7qQowOqr/aKzKAUWDfwC
	 fSoOGoIf5b9Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2C1C636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 06:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167557956575.19461.17075525357108642459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b9a667c4a3d70642e672520c53f7a8784868c195909780382db1ce69bd4e3f
Date: Sun, 05 Feb 2023 06:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675579565
