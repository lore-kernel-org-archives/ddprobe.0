Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A2653AF
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 21:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43E7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 21:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689369668;
	bh=5cO60WHUoVlQBzQ5iXmm5yqN0tGKaxoGijyQSv8rI9E=;
	h=To:Subject:From:Date:From;
	b=gX3J9GMN1/+CRCkhkpsrk/2y8jdR7xMpP08NVeQLVj2tykpyDDuMGH5xsNYR9Sknt
	 ITbXFBxNB5QiGMJpH5UIkA2tfshTq7paCBmSxPY38I0G8P01HOVMOlxaj4XOYsat0Y
	 DdqN48QpvOg/t6RYXZ2PKOsJZayMkCStcyBeSIRiEgj9RqCmk1jD7qRnhGle4ZQ0+G
	 2yLvwau50MiOp/v3vSB8c+m0f0gEL4KPgN46fqgPr3xFVIu5VqQzRCetmmxnfd+jKh
	 oaosD0aH3am3NRr7fuMdXNsyiAHdtq8iZRAJyd5RJ7fWmgvHVYiLu3/RC+UzGNwbrA
	 w1YRSflV4iMDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ED3C001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 21:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168936966867.7421.10632902049662989874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c40798ada43170c3df33ed171068673f78d1f0311c0819ce2efd4b7c8f16351
Date: Fri, 14 Jul 2023 21:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689369668
