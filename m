Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280B3A52
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73BEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674549185;
	bh=mkUlXIYKUgIvGh6dWSxtJYtBFV9aHm13xs3KhDBFh9s=;
	h=To:Subject:From:Date:From;
	b=GIRP0FSpjBvj68QVVcA+ijcPOXQ/nbH/uIWhDqudmMZg41viTdGJradddPdJ+t81M
	 ZZGwoR9WiwA1kpj50pHFaBhNTSUvCZngdCYCsVOoN2UAGbZX1NLo9VzptoBwLrrbdT
	 IT287wTXTokofkvrtX3AuqMIIvEcGH/3il5PePazzLNltgFORSSZcwVEwuR9OU/Hpq
	 7r12rMyobgYT3MqwR8UDrBhtWLh9BWgQmrBVySi8hX4hZCWhWhBNTcmK6/GC0tjMrB
	 VmyOYhtjgSeKGW2YGOpBTuQcAPiNkCha9g8rYYBF3UO+B2CfCs+hK6GquPSGY88xau
	 PZOFecvLEFM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDC4C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454918577.18658.12776824237362768363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e2b427e9a4aab519e79643203c5956b066120a05c1d765e76add59e7c24c47
Date: Tue, 24 Jan 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674549185
