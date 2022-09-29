Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBED7B
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D649C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664409653;
	bh=p5LPUH/pOb5rDC1wfeXCfoZbPcVDR772rWxiCa25+uw=;
	h=To:Subject:From:Date:From;
	b=duweRG89q/r5R4t3IUfGDUxJjuU5H07mofC1YD3v3CfFhe02hA8n3Ou9NAvpDH4Ml
	 7MP2v8enVGYVvvkKnNdVkgPsNEb4OuVxPeL787ZvDaN0B4uSSZdxA/r27oF11oRxYG
	 6cDXyT+gIQscaQNj1o/n8U8XucL16bK7t9/ubueRQ4pPaKpSpmBxs6pZGn0gTnAzav
	 KfXRl3siZ3LRb/O90RMud2xzOGmIuDbN1//egGyjCL1A/X/KH88Kd9RrdYMagEyS5a
	 VmKXcZ8ADkK7Pm91KjwQbOpzzaa8CbtpGzgRyIwYWR2CVqqZKv6IruTPVFWOG2JdxO
	 lgZsN/cLPQnlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502CBC04A95
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166440965332.30822.14883830582797281192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312bbea326dbe553fb9a57a2a476488b334c9cea5c355d237463351fb26a4626
Date: Thu, 29 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664409653
