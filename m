Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2EF7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EC0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663788653;
	bh=qIj9ROaVMZjFRjppcJjnbwDyrGda3hE+r47bGXJP6FI=;
	h=To:Subject:From:Date:From;
	b=nIy0kNbgFlrrvpeZ8LYW5rqwhPgDowqhKnbR595K9Cp4q3sHgCof92+jKOvYC4Em9
	 E6xQSV3SIy8ciEv1pPvVW4hl+GLHJrhsRIJkSiAi/uerOXPprReKPc8maJbkiBNZpc
	 GRQ/4bpxQrpi0abv+Mw4gSIyRdv5e2pWiK6PO+U6n0ZHpHg+W/kVbDN3TOm3cWC1FE
	 p3GH1geI1YXZwDRpkYjPnmlOdnO6Gi93Gd+r7qix1X0dxeG6sh1c6TRTTDGaMC0ZDI
	 PxPTOc+UdupkTdV25qvD2r2MJg1S3MwAkMlSxZmEB9GndlMoe3QJKnYxYNDUVIYFkR
	 ImacOrc2ZoutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5DAECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378865336.10924.2170467159415723294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cafe7cfdcd877d034d03da5461cb1418677be51041ff531cb71c1c27a8f64a2
Date: Wed, 21 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663788653
