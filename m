Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D40A17CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D54C4339B
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682733905;
	bh=c7UYNJzN2umrV+M/VXUolZQGl38PoeS5ZpdLELg14Dk=;
	h=To:Subject:From:Date:From;
	b=MqoA/kuy0fo469fpvTMabhiQv4x1i63e8Uh0vhBeP00+Yv/sWcrvp5fEzp8S/ZQHJ
	 5QEJbk7Es2H6qcbqHaFMyEHygcZbXsLSHMAq3CZOubMAvHa7iAAdNI5qV0miDVNTrq
	 8MeuFVbqELLImxcUt+mOcoBC/Pa9LCMM5j9zZLXgrQXI5LFTmM4AP0KnLNHsoSVWjF
	 b97Eo1yt1J3K7N6yfGgGyLTy8+b9OaRIMBI6XqnvTX3pGPReq0slVtw6gc/hGpvzJ9
	 +vb2XApFozhos86okRW1Pjjt4iBhJCwhydwvW+hXRuuqQkQy6JMltm25A0ffDPibF2
	 mgVvUs1jkpHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A91C77B61
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273390580.21155.18258883864020515023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9df5dfac4e16f6a542bd756582e232a442d4fb8c2bd3330702b6f6f6b9aa4e
Date: Sat, 29 Apr 2023 02:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682733905
