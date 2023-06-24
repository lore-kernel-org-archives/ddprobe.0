Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB0C7FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2467C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687584788;
	bh=yFYPI4n5PLXRwR/lX8I6pcjMfrSv3F7+G6XGZKa++Ls=;
	h=To:Subject:From:Date:From;
	b=fVCdD9F712uc+JHWU3WmpHZ5sLGfGAfnYoAcd1+iPRMvKtz1aa70ZP1PcxAjLfyFn
	 2dHYZu5M7muPvqkl8wdIBAtbuNaZ2MbgYjt27bl0ooT5oMSZW58OWsW/vnQuKBusW4
	 PJjhKYMxp6UsNYqESkSR8I0PPdmI2A/GpiudUqG0T8mxQcT4ZTofccaW5aprHgFaxu
	 UaaQf0KqpGmzIHmK6VcqmMrDT0v54+2KHfcYE63cC0K5p9toTZfNo/612znd+cWe75
	 OJxgjcxXXYrnrZCAsqPc2W8SvDpLPYqYCsdN8CeniIvgqgvkFANOYFBfu3LshMH4R8
	 4kICt44l1EleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66C4EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758478867.24307.14746488322513045328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72627ee6d088b644a1f14dfb7e4df9a69d02cb90ec901a63df12bab1816f581b
Date: Sat, 24 Jun 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687584788
