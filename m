Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18BD632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95339C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671327687;
	bh=AfaN7hRBLhExCi6bl3Yz++nv4DKeEWTc7M6i5Xd/e/4=;
	h=To:Subject:From:Date:From;
	b=rBDwIs/TQfw3sCcNhjmDSpQor/vzhT57JwhajbJmt2XAcwiGPj0h27pafj3fEau6F
	 OZOFgiSg31/S9hj+lvuHZwn7mr398JbcWjaaVTUSkHXx8KCGvLtmot3nn28Rw/z9+F
	 9KVwI8Mli3J/U84B8ZKgH77PXBFaGCMb6WequzwVjZcF5J4GKO+CmMRPPNB5LgckAC
	 wBdH/29nZnpbSzCvK6TrawMyK7I5CTm9nX779Yf2qmRP4qe7WO/ipwvQSlJ08JxNqG
	 dUylepI5AW0F5hlHS7QCQiqbvffbPk2Gj4ptJ+wq2F4+0k6PbkJWglqzXUCuGL8WFT
	 QYYmQmxrAIhMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C73C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132768743.30964.3480858989951601783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0caa2a6f6b8071b17d54cf01b5c232e297a37b6892baaa554fcc5bc37f211398
Date: Sun, 18 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671327687
