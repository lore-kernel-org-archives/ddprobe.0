Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD31290B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E8FC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672944087;
	bh=zC1WmDAW+dikbAzBhAlqluvV8Q3HdqO2/fiz3W82fko=;
	h=To:Subject:From:Date:From;
	b=oiyoRODAxeExfkiKaWoSTBrOUCgLAkWjbWpVfXITV6e0slhQvJzAK5Zu2VI05T5oL
	 I7dj8G2jpIEK+kmWN4cG0/EPIiCY8tIEjwYYy7outDw8n6w6ecYWIzluVinYCtOEcK
	 mHmU+ZFx6d//hlrxXXQndaPrA7joF1PwCtyR739NouV/AQkkv0pUJfDVmRR2P4a30s
	 AKgPnPOrfASUqOcbAknmHdjgnr+9TvvA3L6cf+UlIRmLPTJf4uizPBTd8t+6V5fior
	 ghj4nDv7+B0+nGupig2wcpPAmzmVxQBinOgl8R5CP7YRSOoBxS+wE4LvWT2LZ62fdL
	 3YhMFacK19Pww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62775C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294408739.2787.14714134617086433385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea488850536d2523050ba3894681af6bd9785967a299c43d18f8389a6f0abcd7
Date: Thu, 05 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672944087
