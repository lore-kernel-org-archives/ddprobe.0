Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72ACC17EC
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA941C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693731848;
	bh=Z34X7X/Axe8mRD5kEx7xQzTZQEsi+GjgE1TR9XURn7o=;
	h=To:Subject:From:Date:From;
	b=HflHXuNoZyMyRKmIZeRoHrQRiGXrQAMACgVViqISIFQBHkIQjC3BhoOpAwjr9Sx46
	 suAITwHgBCEpjrUpR4fwDHYt9l2zOjILQU4eP+E0+GOHtL2qrOsvpYbbmumiNPSZ6D
	 vNSu67E2qjck6v3EmII2vmvA+TTrm/HkUyydr2SV0X4LoF3SsSiLPTrTJQuvkDxH/o
	 zL/gb9Zwu3ImJzrDdMoEXuPUWcl+af2utkU6WZYIp3E7xL1DIwnQNi+gbmpUuWbZgw
	 vtpTzwWIw+tAuj9KAZip7GMp5X+6SMPsTz4k5Ga4o282+nM0hSmEsa3kiMqN2eUgz7
	 DGacvEtjP0w+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC12C83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169373184867.12359.8646346538004724859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0d512036020a1a259539777453823798e9dc8d66ab22fa0f122fb9b49dfed7
Date: Sun, 03 Sep 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693731848
