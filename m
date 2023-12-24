Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23720DF53
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dtm1fM8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FD72C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703452096;
	bh=WmKHL/cklP/LEaalEn/4mpgpJWH63XTCtze/klRzwaM=;
	h=To:Subject:From:Date:From;
	b=Dtm1fM8CGrS+Eot3mC6V+PHzi+A2JQNMfnPQ2tzeTfhFZi4Kvh3p1I/Vmt+tlq8iz
	 PtDNDp7cU3jTRGl0z3COdYKwDVs1gigE47qiCCFRsR2NnhZwynp2jezNrvi9X4dYCB
	 fcSRdWGVUVg2CwD1SVPiSod9dDWxn7K67cWQbCJpc5TsEUi9TcfZqr1bb/OgM51aaN
	 ksu+hhEeiWpv4nttJiAnu9f/I1XjVee6qHDzMcgMIyqUP7YpNugIl2fz5kEu6P2P7c
	 n3Z2oJnf3YbVsoj3fQGmKCpDDzg0/ZYpQspywYGN+ze96MspNdhl+ew/WE0/IeXQ0J
	 IjYx2CCApoX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E98EC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170345209642.11374.17917599175331445722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d49ba9bfbd1891b2c2975fc93c4a29b174b45552414e6a41d7568b72088fe43
Date: Sun, 24 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703452096
