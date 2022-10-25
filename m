Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01877479
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E222C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666716653;
	bh=LDx8n4Hu9jApXMX+5Yn6PcwmT39+mK8YGRuMduPYFP8=;
	h=To:Subject:From:Date:From;
	b=LqrEfF1GgjqyNNZ8N+i5r+lMoFTahDs8Z+DKtX9kDoE/7HkESazqGtnLSOjnAFIPR
	 dSfLPBhcjkO0RzG2o3t81ZuvgjPkI7yn1SNo98E5D6JvpasdyNo2VHAG7LpIn3kVrJ
	 4XHyfVljC6/MlQL0o6PbSt+6Q1lUVkXXt+otE6/c8gHhRceW/zUd5XAYPaHzUP2uzd
	 PFDYaygzVLdgg4rRA7dq3eP/z1J7qBiohlyw5F4DB/u2yvUimD8k0wAMnjM92z9vdE
	 BtDQl0f4nr2Es91AbPoZ9IJ86xbeY8/TpKEuVUuJ7vGLYT1ME2uPpOJcljyh3K5L0l
	 R72lt4WlHX27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53345C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671665333.31551.417068219962975862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50290add946df7a80834ddcd94482e9ba43b68f7f63e88654b2532067f13471
Date: Tue, 25 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666716653
