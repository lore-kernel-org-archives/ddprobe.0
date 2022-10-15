Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E453205
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A35AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665873653;
	bh=MGW0ak1YPsXGFS8ShStX4Z0WB1+phUIqkMh871CLtSM=;
	h=To:Subject:From:Date:From;
	b=bKFLMpv5OsVAANXOIyMOKRBdaFp357dWQ4ZcCkiRQGKt8WotHgc/RvQ+Jr1m9l+hK
	 ZWBXox/Bw5IPU9TdVQ+IHHYAcfMmFqcDQVemKddortYXrLwkf0+kMluyPoDNo27n5S
	 +nIugacilwOOc+bHSXFFNrspKc3zTu4NJ32gt9f79UFkwadtztXgTRoXBOnTA3tJBY
	 HT1fcUvXsB4ls4Ro0UXCs0mB0qKrnhT9T/Jz+oOufZfrPiq9a0OaXqSP+r4KlQmrhF
	 Ak01qjzNcUSuIY6o2+E2NpJS+9rCO65OMikbrqAOGLc4MIFHvcOhmkVLbhQJQabhzQ
	 rfN0RaNjj/GQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F808C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587365331.12190.3828464924661820143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f29a7d5c5dc4b1901ab69e440ed093fa61cca6dc3c0afe3eef7214b60f55254
Date: Sat, 15 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665873653
