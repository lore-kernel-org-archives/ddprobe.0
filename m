Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4E17B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A24FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666737053;
	bh=eqd5ywBUUnWhGfqGMdUd6uIzuaweDt2fu1AUOANnU/Q=;
	h=To:Subject:From:Date:From;
	b=aLVnsnH/x9Ck38NJyZClFC4Ivz4v04wuiEMOAPhqmH2cTv2vGAHvGtIfKeODTQq88
	 PdGW2j+KvF81NcgihxwKdNlskbBoBxtMG+087UqM5E8jgB4oMZIdI3JnhVD5koTt0M
	 j6b5FtF+xOxSBvtUQsrLemw11eTT4F/ncqDqCbOtcf6jqKwgY0Si9zDNN0b1pGbVzq
	 xgHVCkxxS0Zi6X4SGINu54Cy+eM299vctgCdpghbNwZVrpEwttyQ4uhQ+Aa5zacaFZ
	 X4gSJMFJ8UQnAuoJXKSfgk2sb/7frMfLhmhcajfK0EilY75a0NtQJtzIjGGtl4P+wi
	 IKmVdfyCeMLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5359FECDFA1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673705333.6423.14414113624243686990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8993adee3ccf2383b0e04580c248a374490c4db0e60ef0c3245cb8d61d5b98dc
Date: Tue, 25 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666737053
