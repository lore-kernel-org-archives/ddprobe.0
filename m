Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB1E569D
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED938C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678983606;
	bh=rI65tqaFNUfeH+TLWjudNKOmNimSJ9BDfKIigzEHL40=;
	h=To:Subject:From:Date:From;
	b=ISWW3+bYEFjww2ps2ij2c25JLx1TOcV1g1xHm+2ea8PSqBawdz87x4Z+cgWR1E8cM
	 oMYpUnqqkBPRNkjbpox7DEvzwigyZKH1bDsgx4deq1sgK9NoAGH98+Xt3d84jOxIQO
	 GY6NpFB3OMyaL8Ok8zO5XU7rWlXaB6fe9laZ+GXuoqRNsv2S+wkSr9fLVYVq3kmH54
	 AG2dNYwbJ23XEHHjYCuSzqqGSBt0tJWuchW4jpdibO1hAbk7s9adaO4oP22+6Ungyc
	 dMJHvU1gFzW5uPwzJof1NXxAAiZu6UJXcrQ2CJah8xWHgTLyVz9zMAxau475rWfV6S
	 hD1lEm50FDaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A5CC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167898360585.26278.1568661777729953007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c3bbfb4880cd8756f360eef914919203e20dd81b839aaac38827ad3f300d7e
Date: Thu, 16 Mar 2023 16:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678983605
