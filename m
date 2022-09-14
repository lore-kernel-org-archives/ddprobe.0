Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B416F15AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C688C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663116653;
	bh=0niwpgPAOVN8PUYFYKgkMc2sx5+VyTCFG1Ps7FFMuuw=;
	h=To:Subject:From:Date:From;
	b=J6DFJZXg/kVTHoYWu/wGrbq2Ff5FsDcfdd0nvcOYE+tvEqDJ2EMl1s7c9KNWbngTC
	 /SB8VwYZjKn44CuzHyTRovidSImIuhBcquYvMBJyrzzfGnFuK0JBb8bDakXmgE+ht5
	 RXwmpbiVbSVZfTmTHwWEnuw6xZa4IPpCmWyNuKXsvWzj/yJsLUkGniqqwJaetH7wV6
	 +CqFLAW5v76FklY4NFiKTg01id6jYNbKBjjhArheoxayPR+nBJVqMR2/ulK/R64vTY
	 +kLb7xc+LIdHX/TfP4g6NqEEDhUcpSvIPdfoX80m7XpFiXAEZkGTPnd8JAWZv5BQ8u
	 ibDru1qOxn31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D25ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311665332.29203.7923690902243268440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a1177a049d1b8cb975b493a165123efe4903e234a3f20dd894beca2fdb90c4
Date: Wed, 14 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663116653
