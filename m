Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A0F23A6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9144DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673394687;
	bh=3Sb4li1ICIuIph8IodRKkQb+KSxMoUGyYcgiavkf3Fw=;
	h=To:Subject:From:Date:From;
	b=haDDXpocG2GpNiOLmorxyNR7x+j14LlViolL4X3U877f3VRI6FsVUrRx99ojMBqi4
	 R5XIVPQMiGj9KnkKZ1itzwA4qxWBXRVZNMbHAENmosOGBXkswS7tDIEJeaQN4AYdXI
	 BVtye1q9ig6UijBnmTecAe8oI+EikX/GoCrnNkFtTi+Nqq+rSS074vWk7cU7CrC+aY
	 8rfvMQG6gcQEdqXhrXewq4xeaF/xNRCeIumv2T3ry4GJJnwoGFDQo13LOIottXfcV6
	 JXUBr6x0a9tX64ZqH+CgNlW0ij2AJa9cQBjW1HhcgnJ+TEG6OavbD6/4I6YQSsKBci
	 YOkGGlVJCmJBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7327CC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167339468741.29300.2966948564443292220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d428d127526a0c308716f7f2a107ceed2ab73ca27372c1483ae890f3402cc4
Date: Tue, 10 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673394687
