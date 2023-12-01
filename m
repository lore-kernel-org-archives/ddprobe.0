Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F2E163
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoaRw0hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E50EC433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701390496;
	bh=dIkHlzLhbj0+m056AnxoMN9O8NWfZK2LB0FCr4WjnoY=;
	h=To:Subject:From:Date:From;
	b=uoaRw0hwOql/B9u6im1U4MalaLDHgxrNcA4oXwzvatRaaRmCayFvMCk2lwqT4FUgS
	 TwYserRQFarpW51apzwiWx3bSj3CWANCxx/A3CridWMTThqUsO/k9bc618/nWVt3dL
	 yxTlLd85YkqPzS936R0GZpQ7SIHy0egLkoc/hKCG/I+70zYYcC5VkFn8Srh4u+DXcb
	 RwZekTmkGCmO0kztuJbHVj8Bm/uqy61BReteNFcKcqFTNZiue7V4JRmiqohrXt3mi3
	 p2vzdD1mxZ11gY39L/ddRbB5YgJE1AuuCH/3oj2CNwES54vOfRZjuRjcGhWNkEhv5x
	 bKEaGUqvj9EWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66358C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170139049640.16217.7212064532519945428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0e7f9e0170520b0c5b101de99e7fd2208cbcdcb4644ff8da881a2746ff0964
Date: Fri, 01 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701390496
