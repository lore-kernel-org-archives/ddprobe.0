Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC6E2414A
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E78C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683905705;
	bh=BrMhnLHb/pdPXOjhpENkeGmVTqxXO5gapGieCmuWXHY=;
	h=To:Subject:From:Date:From;
	b=Nj4jcbU/h+/eCR5GTpbGAXJ2x563F4GLQ1Iegw48mBvIa9YUZFmLLHeCwUpzfa2PO
	 4UNqZAQqcHWuUVVV1PCOievVVtqGj6AGUFo6XyTxEYE8rdcc/G5j+zCCzOL9rKbn4d
	 p3jveCDsMXhi+zsfc+FNhgOQrP4oOJeX6DTxIASRUfyvqzpDsGC9Tu7ut4vcrdRbi6
	 mNh0iatAEKRUCt4xvs72zaNWC8Ju7v1Xn91JlEuvsp1OSc1F5j9BdglNwUbEq6hUiB
	 B0brT7oqouVt3Q8kLH0PQYTCYQkssjOMGFPAJ+Asgq/tya+WTHhxHikDbslFlHYolc
	 3eyAr9WZJzk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C215DC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390570578.27467.3243356869887952310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d508d3d9045414585fa679197121452dc5d4248aa3d6a107df06445c001cc519
Date: Fri, 12 May 2023 15:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683905705
