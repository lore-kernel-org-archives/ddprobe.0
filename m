Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDD42F4E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7647C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691794388;
	bh=Q+mJ2fGHvG2aiUMxMQXmsCVbDVEn9qMDjHD8aALHhpU=;
	h=To:Subject:From:Date:From;
	b=oR2c9QIzjhH2bTlCjlwgu+VGe1pjzhpJmWbVgMC8gVSg/D4d2GMSE3yQH11TGHJOF
	 kcfmpEXhqq/JEvybYG9dAm4cyHs6G4R8/m1emARBgSMQjXzCdRm+SxGuXig1Ey4AjH
	 e2m2A7yixoHFBt+g8YLEvLBKobryVj1W8a4AcdQsvoPu7Wi86CFN/6229RkL9op16f
	 4WqlgtvaeSoDOtOkXNUFDNAUhc3/cCa/Dp4zce860fI45B/WIOctPPWFrzzowPn88s
	 t93RbxfYH7R9w2MAU4JXRUkydu2dwLAYCfBS0nNDjWddA+D/QNrv7AeLHTQKcTlrZb
	 EQQWvBhuH4fzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F8C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179438868.25842.683353907634465886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f693326cf489f97023796bff7de74e24272183e2dea4fe693da2f2cb036ca475
Date: Fri, 11 Aug 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691794388
