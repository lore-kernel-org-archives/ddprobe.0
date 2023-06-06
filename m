Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6558F4C7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7567C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686084125;
	bh=wKaynYheR0wRKxb0bfAAcStPu0wCkfNWjGkhNk0z69Q=;
	h=To:Subject:From:Date:From;
	b=mxLQ21JwT40RG7LMfCXtyZBafbeBFoSE2b81vtBRTSXEl+cZZTFPOGN0Wqgfixp2I
	 8qvcr52xvTK952+6PeArwZjbTuY0FUf5AZxYWRRkwmBiIvFP9CJ7LZ2RLEShPyUovE
	 ZkUhzGg3XeqhFLZTXylpk6UvAiZH/Tga0A3692JSz0Ra7dz9c9t98agUfSvZJYC0b0
	 IFTS1mHCWDneGYHOgY8T3vKBTdSYJBCpPXvR0vz5uLVzCHn5+yObTJdMinC3E3i44f
	 +19ki6G7J5DDHGgdvNez8HgKHwZgPdufPCQE8QbjGL7OSP+n1xAFbrBR2fsT7L4IaZ
	 NF2tAaD9SXEkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A85C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608412579.25017.16919300022862309489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61495bfcce03e3c5848ac8be1e0794a768aee1de7078d6c1803652851df668b2
Date: Tue, 06 Jun 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686084125
