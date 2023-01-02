Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE8C17F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90062C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672696287;
	bh=ALt9hoVIz08GnFzgvo4gIPHWhM7NWOlql0gEMxafjL8=;
	h=To:Subject:From:Date:From;
	b=QTnjImafbzVA95RmIT2+QuYI0kdAZ+MajoQ/yMsW5zaiusYIjwWeMRVtWj4crKyK/
	 O/0ntxt5UskD3REGVBIWh7OnznXVfmsMtjyUUCqU2AsPIEoyUlKu0akL8ZORorldXO
	 J7jWWjOjyCViVVfF4wVzP7dQW2pxnEcEngFs3y9sAqRYCQp6FqYUBm9F9Zc6TYbpnt
	 HGtyE/UpSiEUYI+WPTiH4yWfkFV4VYax6MyLK/dgXwXtKniYPf/sUv0z7gNCog2E9T
	 DaT32JGyIwHtUK0Kgry7ztRfd4LYFyuzfLz22SfYTsCkELvgzPDJiwESVtX0Y3UPFy
	 rlgS4x2j+tQgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74828C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269628741.6428.1980882418929738483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3270b38d6c48497d4944a4f5d2b325b713cb3050ecd74c5d554c0c555d66a3cb
Date: Mon, 02 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672696287
