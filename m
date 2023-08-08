Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33B156CC
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C75C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691526188;
	bh=7vqF3BxMDT950fX/hEyj6QOGiiH7+Uvs4eCbnDImPRQ=;
	h=To:Subject:From:Date:From;
	b=ODc0nBu43GbnjtqJH+m5mj7Kq2A7R+mZtrTxNGqLiFd6SLOpxto54823w0v77NZ8/
	 IP8/BFUeXA+AANqmtihKqGyP69X7ZYrba4j7eWezWklFAprP28Fy4T9vD7APdx10Gv
	 acWIuPzwKtBi/YULmBJjJrQkys7Axv+bVxlXq7jEofmRPxAUXQbphpxshL5nP2jdi1
	 OaAWs9AxG7asNCSWYwJ8tH4/iXW7YRZTftdkpRBAT7y+o+FiwCOXYxxonQ4okXyj8t
	 1FsEfufbEQIdX1E1hZEZ9/MyJadOw21tg8D77i9jzYSOBeD7ecmpYkVfVUkJ1Ggq70
	 AqXJzNWTG+WkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8023C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169152618874.32069.15631179069204809914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9148878057afc80128b57cbc0421c09797d4cff34dfef8bc8da515bf39790a
Date: Tue, 08 Aug 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691526188
