Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFCF361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 868ACC433A4
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673488287;
	bh=bqfvkfiCyFo1DVQY78B1wHKCKhoZefgYaLfSQTjZLUg=;
	h=To:Subject:From:Date:From;
	b=PQKIVgtiKUwl4rcs8/94OuCxoz0BNSF65X4WW7nowQaJKSpsMi/xJqMsflweJMj2e
	 F+M4/3qc3tHrVE3zUDzKDraZdK0Py/aSFFpQ5sVF5xvtetF8nc2SWicWp/6RxE0qqd
	 Il6xK4LMNQ6Ol0bDHPg3XxPZL2H/PwaY/qUJjE1UDJpwF2wmhtFoC7CAdy/n5eE9uz
	 S6xgnG7HCWbQ4l9jIjyV3Whk0JaizpOx/s3vPdd0zxZHRm/hQoahm26mWxLzdXFBRq
	 eR2SVaegRT6ycukbUyigcjsAgof99r2LKG1XciH2zErk/+rp0yKwplNyDVKroMcK0B
	 K+2oNIJDBKyRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A468C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348828742.22769.490498964139699603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2900e68d51e30f55a9b51e2b2f9c053a7a5532134d65809f5a58d301d43f358
Date: Thu, 12 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673488287
