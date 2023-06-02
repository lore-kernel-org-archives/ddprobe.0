Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F87C13B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 22:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DD8C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685745485;
	bh=vsTH/4FnisEgNvTvXeA1XkeTKZDN8TaFau/SdCQVoqI=;
	h=To:Subject:From:Date:From;
	b=fYT5+Lf3VF/5NzcvuGtG/Dnrq0crQlkjgQy/7Onj/vb2ye2qKkYp0F/d8tbqCTzV2
	 om22HnR6NfEBNlwBFYxG4IQryPFj4nhFMGFY8KZgxFjliKMaKwiTt13H1qhIqt/YBd
	 /EclmeBp72s2gSLUa0/AMlINYK/p8pq6p0FEH3WOCL84vcPdpPHKcdsvSdn+fyuxbF
	 S6vK9x8kuMjSVngWcCc0fZK1SMFrC1ffNekkRvdfSnX6WonZdl9EkpAk59+vUuz4ee
	 ycbAz7zpeXhc9H7CJ4y+g31qKBcDS1yLPm26+i8X/RyMJ5T7j+0/sDSOKRm88LwdUA
	 C0cpZDCRWlCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3F3C7EE2C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 22:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168574548575.28919.8887990102787463780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afcdeebd5dacc4da74396855a9380e8f31d960c690552d52c9b18154d7b0734
Date: Fri, 02 Jun 2023 22:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685745485
