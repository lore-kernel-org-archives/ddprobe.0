Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E6824F2E
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70486C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668182454;
	bh=NBnL1BIyOoluIzbQLy7icTkCPKHr7+KVd+aY+kEQxOs=;
	h=To:Subject:From:Date:From;
	b=PKJrOntPRBumkA9v6Akn7B8eY+jOlgktldsvtCGYcmrpQknd9QW88y86fIGHG5Ij9
	 toUfDqNHeSuXhq09semq+VZ/VY8B84bR0RLQeA+eathkWIJGHpM5tziyckn8yYvvfV
	 Wk4pTRuM77Ok9yHDhDPbsg+bCTWL9Zi08290G4vs3taiKjXRaL0DSaq2WHQtx5wunX
	 hjWa7FIdB5yc3fDePpR4naC2xYUae8Dq2zPBh+NQ0nZrpEFqsVWMM7t2moEm/Kwt4e
	 YjU0g/i+2CfjWAZgkjhjHLBTOWbve+4tlq3yWH+/KSpDPqCCQcvBWeICN58n4O9GQ8
	 U8NXjmkuCbMFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5775EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818245434.3919.16478228639098736095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a51006e89ac74ff71195f52c26e91d2ad0f4e531fc87d7f51b49086db210220
Date: Fri, 11 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668182454
