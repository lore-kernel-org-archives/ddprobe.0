Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD16B53AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705FDC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666209053;
	bh=oy3qpq3l2ezJsa8K3JGHwhx/QbvYdXUv+tWfJIKEZuk=;
	h=To:Subject:From:Date:From;
	b=o+J12MeFikWbS+p8ZOnvpbJJvVQiG2M3Kgqhi1MYtpkN7QO3CMVtg9rqkkcHR0p8M
	 2XvZ1QGWSUU59JzJeqgUiPDbpfZmQzLB+0aPIMtNiKBEgJ6x3pe+sXHOWOlu0HN9qG
	 xmAJdR/hRwsXCZT3gGhHA66o+WPsXsXfoH/MzG96WvR2gVO7EB2omHBFmImmoIKdYE
	 ZD0g8N+CE1ftESEEz4k2/cQyUNhn9pBLeMm1S5ANO6LbqIS76bM+TnbitxYxxufdHe
	 y3RHmDLXeaszcMndHy6mhjbXFAiePEof6EZ59EJdY1ltAsqL1B8CORueQClhhY/vz0
	 N/zHgkTKI3uUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587C3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620905335.25344.13039702648761496828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fbb02e4a9838dbf735cf2695b2f14017d0486f645311e5251d30e9058d0aae
Date: Wed, 19 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666209053
