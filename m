Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846CD4A16
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3363C433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692461048;
	bh=uAIqlKrYHBMs5iA1P+aSg2DEjiJkoutg5t4UF2bl+FY=;
	h=To:Subject:From:Date:From;
	b=MOEWG7W3TSR2IMnD4sg2R+/PXuliOq9BN89WPGU2KrR76jxEGDgiJfUHhDuzIIpNG
	 u+a/YorUGi76wvor1hHlh8R8jFVES2AfGL3FPV1seZ/3NvwC5RSZ37pLXkWEiitK/B
	 caIfW0d6xT+y8Nz8b1/vx8zgAyB6H4Ck1diWUM2F0B28WXhS/AsZUdS9NB2I1QMj61
	 dY8PpguhQEKyjmBOTzES0XYRIXuJUSrR2mRCJ2VKacddNWoMADY0FxDCnUwfw528eB
	 b9pBRaPxbdYb+J686M8ftSzp+p1N16sRKHUj+qLvsNOgV1lPtLkn1A7eDlrN7MhNWI
	 TbtZ1XMvfj8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C057CEE4993
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169246104874.23857.12307590080645593499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ed13bafb9c8e528f7fa9fa4349e8aeb12afc1bfc0e63b43e21dcfe8b853992
Date: Sat, 19 Aug 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692461048
