Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BF51CCCC
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1512C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691873588;
	bh=Nnvcc2Hh9wh6rZkRemXoEDtLB5h7VJ7tbxDc2TmfFq4=;
	h=To:Subject:From:Date:From;
	b=fBsG1/eKhruap2YuLVc8aAGvSp+pGFyN4wzIhqFuXFY/Sd0zon87PjFVa/pPPjBs2
	 Q3ADdLgBZJ1fnT2oewY7+hhqhbSZ1ml4N+an0F17lMZZo7eVapYuVygmxMsYMvUss3
	 JkztvEqINc/562xrN2mfaBeIlulftqaTEzDBOE2nXcrUNCuE0Qyg+mYHNuV5R1NbX7
	 h7+s7Pwrx8CQwjd7pdKSp//2S1QPfyRs6P2xK6UcI9Zxk+KzLL9hx3Xb+J4IXGqnxk
	 OdCtfz7uzjSUt94QgNoa/0MxL9rq23WboIO84OQEpoCdMKJzwFwcWzN2GFYKZvqVIf
	 aA2o2FydYp/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4335C001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169187358866.25940.3399677663968080563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19061fef25831ffe7933628fcc09e989d5f5642352d5c44ebab911fa942599a1
Date: Sat, 12 Aug 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691873588
