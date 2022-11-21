Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A7163D
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDACC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668998454;
	bh=WdBOld1v8FcNYynBCxN8aNTXb9uzuxUb0bBk/VccOm4=;
	h=To:Subject:From:Date:From;
	b=hNtl9kEwLtHVEDEja4+U2clwvbOWAMYVc73UhjNmhEP/Giv490UXYG2d0/cuynb9D
	 BUQBtif3e0CEL9UejgI3AjQJyDWmrnOBEKig61BkYO2YxqNkGH9WmWRj+tJ+9mmTFf
	 1/GX8f5/vXkP34/DLJio1vAixNRNKe9hRMm3TmgzY6vZ7sUJnxeh/YvYSm6ZIH6JLz
	 Xc8vpt1J4h18iDAb8AIbfamDR/iNmj7INC9cLUL9O+Bkex/Pqkrzri5Y3a+vYmqX0J
	 TVyhnr7xAFlPPlaoSaqLd3+dlynqmHtSt2Fcuk03JX4dtUeZ/rf1FwnsR69tONvwFN
	 dEPebNZiva2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DF8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899845433.31984.12081763582031030689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba436a95600aa510ffea82a45c4c5bcdd6b55ce1ddc8f0f75618b33275be034
Date: Mon, 21 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668998454
