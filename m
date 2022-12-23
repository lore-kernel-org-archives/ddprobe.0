Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF93315BE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8738EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671765087;
	bh=tnw+s8JEcej4PSIHNUE04rtNePqDmD8RzaiBGy331J4=;
	h=To:Subject:From:Date:From;
	b=pNwpvBgwse3OMFDk56npQ+EODXPuaN80kQLKOmF7cFKPLVhKPvgmd9iIIvK/WvXxT
	 SC3yuVPtntaxMJwBxSg2MNE/u9ycC2iwffHziHt0bkqzdijj3htbsrse9qdUX/KMMd
	 suX2dbJRS/QIUbsOoGmqZyIU1LjneztcJnU4Uz7kGhwP808AnT2iM6hWbTvo/rOZY6
	 He0wD39W11BCUCWnUD3ayuJbBnKEJMAR22rN2tYhGJOoYn5iZ3GpBv4B1j135WYpOO
	 T83PevCqTRFMgonjAJ0uXrKcqBElOho0huxZJENW6VUgVpY1vZTYk24qYymJgdbbuB
	 sEA0Dx9Y5VGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C10C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176508741.15940.7196598716438991430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ce9ddb077e70077fdae3deeb7141f765e26ee0ff4dd3c0665ebceca223ebd5
Date: Fri, 23 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671765087
