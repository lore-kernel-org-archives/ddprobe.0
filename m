Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6EA17C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF330C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686535986;
	bh=HDIt0xFRS2X/TQH4YTE59gGp1MTzVOqoUt6DGQ4bkoI=;
	h=To:Subject:From:Date:From;
	b=GejSAaJwrwXDeaGj06UzqsusqkaAVV9VCVV4kCKE4xAF2r8MN9bmysF6mhFEQ5eBC
	 Jng25QFyZbSbZd4xN8IAWzE+jBfUXvJ9yZ27aM61hqAZmRuWvdEFS41AXSrLtjXgXh
	 LhwG+NRd3ULDsNYxLe2T96Y7I5cdLQCKtyxCky2p4uWN4jqCwxMQIp6c4GXBQX7vtb
	 sZwkWHHC618jA2Y3iyaOjt7nAJtf0uzFT8j5sEKAPC0iCYKYyrdQMzGRxweNYG8+IL
	 wnEobt1YksYJ6My7nvm9oDVtyWjkXTSQCTe4cn1XIfF2KnKCbM4/cWphB1DqSY7tuC
	 8ltE36YAEgIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2C3C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653598582.26802.2173432534890184861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f6b96756b853b6760409c4b5f42a85fd5afd6b0fa423b3c98f3808c500149f
Date: Mon, 12 Jun 2023 02:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686535985
