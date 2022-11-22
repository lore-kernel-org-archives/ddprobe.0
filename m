Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD75D17CA3
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7061DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669158054;
	bh=UmlgtprGaFWfdKnN2JZiPmcFwgA/uFtnuB68RyZAMHc=;
	h=To:Subject:From:Date:From;
	b=ijrMdANp2XpG1bH/AN34TgupZciwAfJbb0s2O0HtE0EwoJqM8LDWevrEvWapmmYzk
	 fa0shaxa6NOjRe7JHGg0MRvqAeeewr2A/xZ656K2P0O6k2JiQQZlKIwGttpUebhQP/
	 0/sYBqS7vsyy5Ls6OoM0QIFOC4sQIPHjYiuCT1W775TvqmSA24auH5bgkCKzjtvvzY
	 rLMAo1y46KYVlMykNECM2E3cOS9J40AvXg+4pVyZ36BrO7vIxezG+BIgVumsm3YYMk
	 aNehLpa8s4ALOJrg2MaNANGPhipyfpE1pqVsekORukCb1KvT0gRlu6iwpdasToMWWS
	 m0mT/TWHSoY4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5313DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915805433.21569.2427726042705105948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46fd373d3baf3671dd2a4c257459c779c164c435fa637a5951cee19245422f5
Date: Tue, 22 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669158054
