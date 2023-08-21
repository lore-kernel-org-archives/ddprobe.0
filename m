Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8904A10
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 19:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EEAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692645848;
	bh=rU21PsPCxNAhSK5lECTpNJ6Qg2mK82xvDvZtZ1h7sGs=;
	h=To:Subject:From:Date:From;
	b=hKeekc8JWJLTxGKJel/SBfjoysfjStnmZk2aJoytadqefszr3A7fu8GxHYpA7ffF2
	 YzwirVxUl+F3cG8tti+xJ/WidP9vr+gbfROCeM51PcBZwuRj3OI/BU/Qo0vrpqQN1R
	 8QJMwT/R76r+xSpDT5xGDEkJhzJ3hO6Yhsvy1cCuplkIRyV7SZBlot0qZKYITqsige
	 bUDWsA/LCU+I9nDsL7k8XOB+q46tcCPh7Z3Mw9x9ZsaRURvUZRvT1lvXKfVxtDLGFB
	 2DZiPUJw5x5b4s16yfpE9UwH6ytDOnciVQehGJPjb32CuQrnjs8QVql/lvRdpoVu6k
	 L50pSHYWWzm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC62FEE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264584869.19320.8967370457010676915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902e1750a12922a940dbacb319e2926bc83b4ab0a259c4d8922b971bcf08ab08
Date: Mon, 21 Aug 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692645848
