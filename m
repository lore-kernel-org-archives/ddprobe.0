Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E62374
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 201DBC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686856749;
	bh=q89U3+UxeTk1VzNLlM1tuf3WF8NVexi9MwM+Yj0NbLQ=;
	h=To:Subject:From:Date:From;
	b=UHRvNaIH3h2XHEgb1dUZgXVCqdtILI0oQuus5y98JZJr59A9BiCb7/rQ/SROc+pTw
	 BSmHqtqUz1XC+Iwea1um3Q8tUni4zW3l7VrOHQubt+HSPeGcfn8k72lIKx6vk/CfWN
	 OwsRFIz9YxNSKn6R1agLhcgfk77oTDiSFSbm+hVBNPeCn0YpaSeM0au9oSjNOwgszU
	 vshAIYFBqYkJ4c/1nzy7TNOzbXQ4AroiA6aHoMcUb5NfcPFY628AyJjb7w15Mrprgc
	 GUbdJ3RN6ehlt7rRJ93RWfqsQSeRVMJ5C7VgR62nIn+J7CtYmQH0xrj2EDEedHxUNq
	 G8Z9lgrvOPFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC251EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168685674895.26821.6367387192795078856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1470585abe0b768ec7536c0fc93f5d8ac0ccb8814a7468777a9e06c34c5000
Date: Thu, 15 Jun 2023 19:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686856748
