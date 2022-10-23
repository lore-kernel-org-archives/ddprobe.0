Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6EE362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BFAC433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666495853;
	bh=6DC65pCL+oPXCr99T+izL2P2yRTLoumD0RSTvlL4cKU=;
	h=To:Subject:From:Date:From;
	b=u8jX/cCXQc3/fzg3N1qSKn3d8p+n7YeNXupv/wiVNdbXL27ZhexXCHgBm8VWVbwav
	 2BiWutko4ZqagpvOgqSepJhHG7EskcfQHRw0aAV3UsObZTz8D7Ijxcs85MTIEsQrh/
	 VBcqxTja1xkBvEzGavyZv34yRcQX6ddv9Z0W46Rv9aVa05m7p3LsptfE7Xqxp4VRyQ
	 /BZoB249mVrYT6NCtCJ2p+a0L7blEHTSD9giMmt2VVs61PGQrcT2haosSvhPiViZE1
	 bnGPPC6yYRu1I7s7W0N+QRRySMvJigO4g17t8F31AAjZtvTgqp7yBdeQYe2YERJmvl
	 juPJRR3PNf+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FC9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649585333.23233.12876015047008271677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6711c432f9a9c24e5a51d4dd9adf6ca9602022203cc041e6581d833a8a7eaf0
Date: Sun, 23 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666495853
