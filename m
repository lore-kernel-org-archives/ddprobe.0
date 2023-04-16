Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DAE2578
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2958C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681661825;
	bh=/2gOBqs64bPL2c8k6/GEGdZQckBUM5qrtVQwWOyVbvY=;
	h=To:Subject:From:Date:From;
	b=qj3F/k1/IsRJ5dJl3d7sztMLt4qOlnnPW/Twqtw2+StJz/ZLhJos85af0PqiJpmIN
	 kwTnW2Yy28D907MgOFPoIDGQs7lPb7M3zGwhZ0SJRw2lp0AYG+EnE/YDOPJpNuKYtz
	 SSgh+BuK+eS3713qQ4J/OFzwy2gnHP4LPRLkx93vLGWJGXW6/kQBT1ze8u78rzQ5+Y
	 wUD/kV5HUS76tIvp+zbKGA/ssstp1FZ2f0i+jLshzUbNt9+uq3KxTcI9HelEg5b8cY
	 bCkQi7LuznDr5txAuvW2uNEO2g/XgAFnGTcQ/nLixE46ca8q2wsPaRimT90vBHJQd9
	 8h3YUwKyBhxlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD696C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166182576.22817.2809586182520912560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca051f3d0b5ec90f7cf7fbf1cffe7e4fa4c5572b3979a72b19a10a83d4638ad
Date: Sun, 16 Apr 2023 16:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681661825
