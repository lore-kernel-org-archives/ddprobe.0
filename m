Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AF75CB0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACB2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665436253;
	bh=I5Hz3GTlTZihCa4naf60FXuxJbvC/OQlAUXCgC1rkos=;
	h=To:Subject:From:Date:From;
	b=WR0UvZBfs04tzExoaSga9UHw9laUC9Vwi/zQ3QLNJH7EgP0zA/0HZMzvWGE4/H8ar
	 a9DkLPPcGEGLbWrUf8YlBtH0siNdw8IL2NxyhTwojYsqQQS3MkmrbQ219bwt5Nim/X
	 315QIE+AMLfR2n/94HuttrqHruVO9tBw46Dm4yaSB9UCT+6z2m8pRUlSn4uBDTtJBE
	 T3HkonmHXXOURvJtdfhOclfSodWxT/SQpY939x9XdFzzJlae6Jjf7fPbsp6PR2hDdQ
	 JiEHe5GK1jgD8Vfhj/uf+Gi3xUj1kxpq3M9NOctlNaDff+pI/wuq6/t8ZVREzx3p+h
	 ydNQjeFMn4lsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586E5C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543625334.25972.12108668612341974513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86dc283fa71c5a5d5287c02c602e167138e6ba97ed396bb8d345058b02566a6
Date: Mon, 10 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665436253
