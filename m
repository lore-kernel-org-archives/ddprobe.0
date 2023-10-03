Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0951E328B3
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 16:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3671C433C9
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 16:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696351568;
	bh=tQpgbuJ35wRSitlhIS0F15OznZtbrXvnDu1MCcm/+nU=;
	h=To:Subject:From:Date:From;
	b=uoGvke6018R4Euqs4ZUptvprI+O5gfD0ojJahKiSu14QNCqDwDe/D9a9xg/Mq/mDZ
	 dqYHFZlEUf5o27DuODAYqmKz/2xm0pgkpv9A2XrS+Y6Ia+xJdLHohvJYbl6VBNGQD1
	 Q/5gHr7jPSqf6/3GIechqQPiQ0h+VSPv7gEB79VdHi1QnnFuDEdxnbD691/sYuaORr
	 muKV1muzXCpFBqIZkpkp9cpyjOnNmILuMFVhywq6BfEZ9oR0uea0M7YJ2MXZGQfwmY
	 G+x+ptOZzdVfu9EJ3dvwha6iMhsgXOt5t0uQ6x6vhJPtcHY1yvVzBvI/iMjSwiu0pw
	 cPaDSqx02fWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B428AE7AD78
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 16:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169635156872.13674.611071143771126172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a88a04bdb9152b7d598cc7cc11263967bb5f55ee804ee57400c6770ec0e14c8
Date: Tue, 03 Oct 2023 16:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696351568
