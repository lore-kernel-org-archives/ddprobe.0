Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D61200AC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ADBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687453388;
	bh=Ls0Imzf5iOjGfJctJ2XJoKF1ewPj4MmABXh3hB4SE2o=;
	h=To:Subject:From:Date:From;
	b=IjpJg01csBSUQ9d1YZOcp+Vf7Gyayxh2JSGqlPB6X2DrdpAxSpsxGlCKeG5J76rM2
	 pBXmu/2oAKXJ1qzPRs+GBVtXenqSrWvSbKNl7MrNFiAl3jyF3BAc7qeCCqCJnl3UyE
	 ro9oDFpK6Zut91ufa+yMTxYNJUlZkD29FlltQPnj12jIwrDHm9nUJ7k77VP98ndUcT
	 Px5eWRrcuSpzRdrwq4QUAibv7IydqQ+Fzx7GZ8zdpe4WHQEHQejJgRRlMzLgjyqgfU
	 1g8V8D6nqNaCYtKsaTm1SLG5oYdLaRS5ZF3h3NKdNCzgwsS42FztNhE2w/7Y4EgvKO
	 uWqA7uSsT6PsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84AFEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168745338867.19185.6576185005053219985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f87f2bf14aacef95acdf87e61c02e70077e6af33b138a7ff3d67fe66aaa127f
Date: Thu, 22 Jun 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687453388
