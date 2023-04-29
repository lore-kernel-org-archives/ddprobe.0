Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8056317E9
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 03:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11868C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 03:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682737506;
	bh=aBqMRU9dJH8uZHhLBZQxnqfDg0OvJb9K8MlogBt5lbc=;
	h=To:Subject:From:Date:From;
	b=hInaW8yG5qEdtsXx2tII7D6G7lthe9fiuknMCELDLmP4dSkB5HZakghjQ72PlOVQd
	 c/9U6waYi+GxGRDdAXFOFMIMd3ToqExI8zDjf6wIK9/EwHMxzLzaunSixi/Oyccmh3
	 oy7X71io3dj4YnIY+7WKxgqXfZYK4UQD0XCxLtULvz3DFgcednmfhTC2hLDxd8QwBZ
	 Ila3XlZgVFp6HVFyYH74uoAGAA+hXNEzPcq3bYGdFvSzIrUCOdVZHc75x/IHA8rURD
	 Yt22AOTjzxNjK+xnr9t8Easu1SqCei043nv1xRx1trOOJhCSblLyY0K1+JdQP6TkjB
	 Ws5L8nAVV4dtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E21E3C77B61
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 03:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273750591.11848.9351663543768485652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51c279fc6d92acda0be146d421a49ae14543f9648a4866525c4484e1ac1d4d1
Date: Sat, 29 Apr 2023 03:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682737505
