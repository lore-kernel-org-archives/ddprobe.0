Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2651E9E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768C3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668115254;
	bh=tkZk3+bljl8vDb7je1whCADBeuB4CCEXOpREFJzjwVQ=;
	h=To:Subject:From:Date:From;
	b=GjcjWCCKc6EcT0x+8mXFX+UULHWyUo8CYHqjNQMqWFdVgMidxtPmcvWpfyaEnr3EC
	 HPdVxH2+CvTG1QR6KZj8odPFzVYepcAfoyb1uO7GKR9+386J319AQJWt3eSTaC3Dj9
	 0HT94jwd3GNyNryyvfNrRMDa6XFqwKdQSTQc3Gf/zA4H1HeChEcftyrK05U8J8i9U5
	 wZFy3TLTj3I2DWQA8gvNDp+pCUvv2eT7W3B0psoyhFoPzGoAN4BF8YoZjkNHbAMI+x
	 JBN4gzezPGp+GuseBvyQUurng8k0P/kKjjVlcYbBTQH7/R4MYV7eGP2NJxWQONgsDk
	 mz+kJHh56M4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59599C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166811525434.27363.16815335424224492624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e584ced29c5f3ad88c9e5bb0c5e5645b1d1e39a38f2cfa3d46a7d0a073062ff0
Date: Thu, 10 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668115254
