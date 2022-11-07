Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF377F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6882DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667841054;
	bh=LaqISbea6IJUFaeJjv4oXyJxwEIikSpJ49Gn/kPtzYg=;
	h=To:Subject:From:Date:From;
	b=D0UmgBv4L4SVxjXzuc6DwsaWDpGWkaizZOyzBLk1JGulsEwf2qdbTf/QPsnQCp2dl
	 unHioki3azCt6R2Od54Kuet+18tvkeNvOj2QWOwDepp5u0PKoBWgugd6JoJwKEYzeS
	 h/Tmbu2q4eFsOIH0s2agDxfsF3dVfRTJLpaNDSodwvg/+AQ6eT9LKKb/dMDNfDmw2K
	 Bua81SaCmoBYr6/UwbTl44zZs/I1xYkb5dtl4kT9OLE+Jl/T9B8Iyk6OleG+09qit3
	 DVtt3EbadZQ2WQJGnwNbASAQM2ysa8pKhhVC6FEPCXZHBAmtdSSQEtY0rwauOlMInL
	 H2f/LzKBxaedA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517C7C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784105432.12102.9889927533513483930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711a042f3d81bf5690a9dccf285ca64ba67dfbb6977c5ef6879eb99214a22092
Date: Mon, 07 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667841054
