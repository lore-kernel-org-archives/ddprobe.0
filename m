Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3F02C9C
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8AEC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664047853;
	bh=0z/E9qoO6FBoOUVJu53ZxbFMTSJnxncqjuaDLxWsYu4=;
	h=To:Subject:From:Date:From;
	b=oCkgjbMOov7xuQWw8TWlKBilMZYZkJgzAyXPctKScSyAXDzKmKzLLUmxPYGLbIIpd
	 90ktMUlyJRHoS4oMDZO17SZU5bgy5eIBv1iPAouZcMW1fwGq5sP5M90w5ltkx3700p
	 Mt4TzGwkEmlC+Gd+nf4ky90KXMt7mZ0ZL03X1tKB/Uq+5aErhD8Qy/GCMmzxtPTxp8
	 E8FdeVukksNO0MVvMSgSxe0nd7QL1H9wA1w7u9Jq+JPB1/+SzznXFfaChASfxGT4pb
	 9Ha084kGXdn9CqhM7QInxV19N+O1RASiG6yuq1gSCSWCcWMKjgCleuv/24zG33c5Yi
	 lgV/GbB1lAfYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B5DC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404785331.3131.4162604348439364160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc7fa09e78847611d76c968f9776c7d612586036a9e1d3c56c04b819b84a256
Date: Sat, 24 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664047853
