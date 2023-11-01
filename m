Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EF57F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foZbVTVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8344EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698815896;
	bh=JubayVEql6MwlgCqh/h7xBkgJRfPW58YL/GUHyxHBoQ=;
	h=To:Subject:From:Date:From;
	b=foZbVTVzt6tiOYJXiwzNrf4N4/vzM4ZT+Qe3W9aBO1FVLj9TEiDUYK3OU4J9Bxy3u
	 c0ct2D66FHFfX0yQcyzT2hiIX2FH0D52OXL2CV6nxyws3KAY2KTID2lVgUgibdRRzU
	 h0nGPAoO+SA/dNajnw4r6tiyEgdHyYW2ser9HIP6j8PNghsgmxrVIfm2bhPPFCMrBD
	 mU+aCkOJeDabQdNXMsTYSW6Pjc6ZstiMO7vwF7yEvC285YD03OAfjWdORabUc7Yzps
	 xo5oJzFSTPLNx8+A9APdhUN6cMElThSOBfh6eR23vZT5dNpX6F24LXHySmdDeh7l74
	 2ffvTdhF+t0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E5AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169881589640.437.9064123503991134014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de378236df3f5ab3fed1453d54e67ed031ff035c4e391acdbbd03660cdab8173
Date: Wed, 01 Nov 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698815896
