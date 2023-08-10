Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A3C20E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 07:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8C8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691653388;
	bh=Ga/cxcDAhosjOgm3MfTof5h45Y40Ls9roz95wIqdJ+U=;
	h=To:Subject:From:Date:From;
	b=swgMB8vuUrYkxhmCJMk5ZGopRZvokkCDmb7myfNCUpzj0Veom8Ln77F7277J3hPTV
	 vqdrwOj0XZM30qiCzHzMNEws32IJuaBL1F2Cy45i+vQCTljVz5A1JQxwUU60RY9KUU
	 Rbu9LzufgRkITrCwMEFrhWxCsQMPjoxDyIptJS3uu4KGCsYHSu8L9U2R1ZvBAXmCvu
	 ZKZyax/lPhq2WUuRfeiTqGPrKgvJwIn8R+pkohLd4EOISTxj/dwJyfKXbkyW/3Orjv
	 8X6iHVd/7+oDe5ySqcw3FgZKq59/IVwNLE6n8syaw+VtNbk6Dnjf9EL0S8emJQ32yN
	 wNJFPxqCZVqEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE68AC04A94
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165338870.14155.425274809956940136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d72b2d8b0df0f6dab6f0698af2a63160eee467851b311bd581c2acccd3fcf8
Date: Thu, 10 Aug 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691653388
