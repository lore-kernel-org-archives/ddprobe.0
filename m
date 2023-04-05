Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C20136B
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA9DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680662225;
	bh=f/e2G3naSjf+0gyNqWftB+KLc3PJ+9bCf6gRXWi9QmA=;
	h=To:Subject:From:Date:From;
	b=FK+28TwpJBV2hnKPx5xQmPUFRwLEepkvexaXrOzunT15buTmACuJDWsBHyADR9g5V
	 LtSoQxGBhTjw9uYYICOQOdg3mHMetViZdVjwbaZJkpHnoWuvm6ny+gfEBcPuZbecpA
	 YBLU93T55Z7c4S8gLkMCszs54GKLuTgBqw+BkDH+otooOSw+fDIch4RhGTP4rHTkSj
	 Mtd+vEaH5RG2TMCe4qr6YdejrFXmQYmie9W4lFT3nW/U2fiV+7LLHZDou02vDjpe/P
	 8Bw4+8OxtqcuQ3WlNIp+2vG9IEDjF4I3ZVgQA5llk7+9PNObMCRKuUranpNs0BP8xK
	 eVS0PVrJZjxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3F3C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066222577.11249.16760599682846330250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d8a0d1ab8c2051cc10029d3329f5629febc9ea90034c61c09f47bb21e671af
Date: Wed, 05 Apr 2023 02:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680662225
