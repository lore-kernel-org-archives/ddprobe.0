Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62599CA58
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 14:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFEBC433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693059248;
	bh=QsuCJL5U0j5fOBkSyxhW2E8NcY+QJaMt9tWzVQXy+Hc=;
	h=To:Subject:From:Date:From;
	b=KqGb3F7n2fOZrgnKo2z/qktxFvhxmigOIBkeN2jSDLDH+P6OTUpLcw9gTiV4j8xUa
	 wa70q3aUmqSSwB/xU1lzpx5iWuB2RQuB5iPO4IgK2G5NHYOoZm0f+a5kTB/jn4JD30
	 ylhkyZTGFjQS1PS2h/N2ihF/tl1I3iT2pX+HcKd0lZ5+2rQgV0JM9oV5siQhol5bxQ
	 zNDR+qkAL+5E0SXa/PudbRc7c7yMSPmW9MUBqM1GcsuAoor+M9u0wT9N6DQZqZmfd5
	 904T1sTKRa/Z1yWziH+MoRLLHDxfIC7DjnIOYomUBDcV4w7zxHuUUMjGOHy9O5NdI1
	 jDUvuUt+Kfs2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07E6C83F13
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169305924871.31432.9589788598278987036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a605787fd8b3a220956f0d4495298c8702157198406640ccacf5bc954058ea7
Date: Sat, 26 Aug 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693059248
