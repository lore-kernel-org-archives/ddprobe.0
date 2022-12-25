Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC38B18D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BCDEC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671986487;
	bh=U0wxu2p1fHXG061QWWRcKvJf1AdRixUkfNDZRydgrRI=;
	h=To:Subject:From:Date:From;
	b=bt5s7iuxLiDgJBq0y21fozYT8f17oIOVcgQfaEvcR0vGFmfThpLKVdONNUmZ0b1z7
	 fEDxHngoyT2TWJA5fWnJ9R6bYi7gOoJ6EuSlnl+mk7jR5tVRE7g2fbqDtMWll2Z235
	 b3k5rOPq9tMtRiMcbm3yNH1eJSlI8oipmXSbnhs5/r9piUar9My7AT8/xT1i8CZUm7
	 4jV2KMwIOQod2ifVDKNzPMumzJshcfsRUD4ek2R5+Ie1Cfhbq/y1wD6PgqDTATf7y6
	 Ix+GUge4E5q7N2ELFiSv9B0+cZGLc0ArtioxLzp3Dr+8Q1/THKQPWmqL4kn/7lSkcO
	 1ero80Uj5q+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72536C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198648742.4176.5250341942311534095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8834b454dfd5814132ff47edfd68f1ccc8179a151fd1122dd989b46cd68427c7
Date: Sun, 25 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671986487
