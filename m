Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E176C23C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94ECBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673334687;
	bh=P+BfKlrbx+DIL5LG4CLTj/ve/bhSgfKnUJMApW7YsZs=;
	h=To:Subject:From:Date:From;
	b=qqIpnFdlwBAjW6TdLyA2Ghmzjs+vV7hdC/evaqjKucuOB3NhF036d8Bl2Y/Pe6PkR
	 ic2kg8hhTxDtnRAO5FxtIlyVNuwUNarPyaUxPUO3zuvfb45DQQmLGL7pTUAR893REg
	 8dKJJnhVXP+064kIX7GiFVA1wzEuqlhE6nSUOqS32+V6gzT5H1BRa9kDMHhh93S6LB
	 AeSAtBVzZ4O2crPrHMSTWBBVhdZNZ50s7fZxBxWwPjUHI1kUBGXC9YSc7Jtvh5m9n/
	 6kIkrM3XEqCXDLVXxOJj6Qo8Kx9X2NtD/vGTl/9NT9fJfvIr+gtHrgHi4QFmFTZ8i7
	 E4QPZSgXfemcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF71C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333468743.4762.4361138948607231335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69144a92864b238c2e8744a50ecae7a4c4bd4b370497b97361396d0986f8f152
Date: Tue, 10 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673334687
