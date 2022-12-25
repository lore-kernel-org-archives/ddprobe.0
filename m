Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA60563A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8050CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671955287;
	bh=O+jPIhvw6fZD606FEz71CKiJJWq8bwMLpJzCme3x2Jc=;
	h=To:Subject:From:Date:From;
	b=T66jZRzBUBQi3T6GsdmbsmWmHnFogKlY6mX6qpX7/YDm7KRqv70faDa05WHFgp1vA
	 SRZNWseWCywvVuOKyhVHbHqkyYZbbJSenLuWZxoPFDxxROkx/lRSRYbdhZQ7RElxZi
	 o6GQfCoqHzz19RZTauqs3zxxs/RMJjGkKgmlUmERfV5qV9ngeB8tG1bWNzkiLj8K9f
	 EJJt8UBIZWwPdRd8PXQ+X4A2D/xKd9J0Iilugu28mETGcRn5p2OmXi5H6IrkJwHG03
	 AcCeiQ10XIwHk3GNIJK39iNco0cp4JZ2ZmxkXzcUapkbOFE+AV/63o7BRM/Ohp+jQU
	 KMgLc76tuPuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E2EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195528739.25957.15334043984633684778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b102ec0955c5607135547421ed3882def13c144fde315570477dff1c04529be
Date: Sun, 25 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671955287
