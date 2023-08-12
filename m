Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7AC36B
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D37C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691807588;
	bh=Ymhghpz1Zp+f+eqt8mHWixNuj6RF6t1icKQf9ebWOKc=;
	h=To:Subject:From:Date:From;
	b=cce09PecDR5EE8/C2VAI4hnG+FOozY59gfXNR3sU1GfYD0/kIOzRUVrKtQOp0D4Ki
	 4k7nxaT8NfVfb06u2Jd0dkt3UtrnheIQK+yyaXoIsdPgn3HHAgPcKd8tzHciZomlC5
	 y4hhGA21lU1wIt7Jljwlpg+V8C0umpF6KY8WZAfgerHQvp4UcerdSrRfex01Sogc6j
	 tMgbL73RRQXhzZYdVqBbfD9E6H9LzDGLLzlkJhmeETh7hJrKfSn4srEnPPX601weJa
	 cPtiX7MAb+2oJLRHa8zLZsrGtrudbGmj1x+uTBwznU3sYq3eEX/fP+WjIcDB1ygDKG
	 sbiOJKEWiY0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C69C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180758866.4552.15933102398539977824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af558a75e142191af28efdd85bca69c42a6edac4ed783308927db6fe29a9af46
Date: Sat, 12 Aug 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691807588
