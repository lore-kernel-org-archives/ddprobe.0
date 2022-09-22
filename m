Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5B21FBA
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A65C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663816853;
	bh=ZywJR+dsSxdrOEPSaED5+beQNlH3Z9ZGozuuI4j45YQ=;
	h=To:Subject:From:Date:From;
	b=S7LdAMHNf3IhwmE39ymu7Oin0xL4Mrn7A/qeuG1AG63GXq5KG/FODoU4ChR8i/JYW
	 s/h9IXXHHqDUU4QnLUlB1R1EBxiVtusLM0sBFj9Bt7fpYeUaunmhE+aDyHwCmHZk3R
	 O4nmDbB2K3jsOjnrBV7TKRLKYKygQn/Cb/UmvKsrT9J2c7j0IZ9wl8az+KAdWnGuYc
	 l3HM/q7rmAyly1gv8sJ2xfltlNaCX/YcAHoIVlRF25CN90VJkzRQdIryLz/sXYZCTp
	 z13NTwLiYisHL1Zd/CN2s+qDWkYo+JE6dx5Bd5oYNDHqQmbGjT/NjjWqWgCLoIvNGH
	 LLDqVYRuHIKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568C6C32771
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381685333.12756.14856844602044083258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabbad5b903a3a17fce63826f3b2cfe9fb2bb147848df7006a1ef7c4a0114fe7
Date: Thu, 22 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663816853
