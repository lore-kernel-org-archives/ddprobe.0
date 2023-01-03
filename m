Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C298F7C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98E03C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672786287;
	bh=aIdOS4c6UTz+J2uIeHkIvHDCe1UvATTquGOGgLXCBp4=;
	h=To:Subject:From:Date:From;
	b=Na95LArrv9L2fINcVjV+iTpozYRvhC8kshKo8gKBNbCCvM6McwCG3BSAF7i32LknP
	 0fKhc1MdjUgtnadW4m9MfVq3/2iPRR7KdXKv9GmbzgAHqoe9xItpym4xP/D0IOAABO
	 Dktv5UNQvP0+acQdhNg+QWZU8iZMydOgGc3SiY0pMVdVGDNaoU8Svddj+6C39VyNhz
	 xWeqzNCdwb8LKHNg5o1HUGArl5cBI4gNBrmO177HiFbs0aSJIDToFcIXY4vFE1ZpZO
	 CLyj7+r3/ua9YY/SMzJwrC+IoxuC7MNOE+Wa5DOXyXBWP18+K4kWogdnLhNMO6L0QM
	 3Da9zvcBt0Glg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FEBFC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278628743.22687.15047508540677750468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a173adc34658ff42382c874cbea44c29b63cc515fcd211239c81fc4e6d34fefc
Date: Tue, 03 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672786287
