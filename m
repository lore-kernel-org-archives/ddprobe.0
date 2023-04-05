Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426A624
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF875C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680666425;
	bh=E6MSrldegC3p2ScOyu+hWhl73mD1cCJL1Nz5vjm9ZNs=;
	h=To:Subject:From:Date:From;
	b=pCMRo4DSSRIEPj0SCNBxMF/Spl1KhnnW3JBYO+Uply6qfLZc/3mJJRDG8vi2ObHY/
	 tsm2Hme4MCCT+xd9gzsOfRoykxy0VpRjLiGWOUBQawyh1ExZ5/z9Sk+Cc7XyC1vl6F
	 VsYBJqrWFdjn/WaNrueIR60+HwvJJZBSHuN3qzeK/Y2wW1ewrXQduhx0eRsiz6433n
	 r2e8bWilpWeboDBazFt7+cFSbwIbecQDHXkv7YP5TolxtAbq1OruqzaNyDP/w+n4bZ
	 IKLI/N4Fk3sDEFScFxUfHy5u5GeCnoJM2F+GdAM86b2oCBksPrmiGqCsVd6Iju73A4
	 ubnEFFO0UQw1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB90C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066642576.25497.13646803650162909021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c646a88b559b9eab39af974fe8787a91b4cc8ef8fef00cb9c79e8f9f08c73ce
Date: Wed, 05 Apr 2023 03:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680666425
