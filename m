Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCA6A920
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 18:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E608AC4339B
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 18:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675965725;
	bh=p9N/eK+Ywyp6q6pwOAKRQSQbbCTbCgkdIVpatT0Kk4s=;
	h=To:Subject:From:Date:From;
	b=ITqqXqDaMrb2dpi/S82q9nTRZUwUcpCLZMiz2oO9VFQ6pA01wa2goZEA+tJfQ0n5E
	 TjU8AS3cYPx9YMq3miM0BK83A2jgIBGfPXO6G5Vxr9yzMXfUF28gTqop6vFtDLPFej
	 v4yfigbYa8/ASyiCYvoTcE6cYPGYTkwpX9CTgeaXvRdDssU2pXeZ8Ch8nfbGOp2mpJ
	 KrgJGxBYUBOrXHtDOrmP8qWPGPAeWvjGgtMXp0MNLC3zcXq+2u+7NJnh2vs8Dp7sGA
	 s97KFNST4oSj6yIjqzr2J4HO7IaW+6aSSdL2dLFILU3BaRtiGOUBT7CT2Wa2abq+Pg
	 2xKepN5wTp4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE0FC636D7
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 18:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167596572580.13503.7423314806436311850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ca2a03c33ee8ebb44f63167e920931c4095bd76146ee9bc771b3e4d0202b87
Date: Thu, 09 Feb 2023 18:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675965725
