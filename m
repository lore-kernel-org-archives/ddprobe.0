Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073537E
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5207C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663310453;
	bh=ERGxHND2pa9DgqWv4DYiXygMCdp/8zaWhVkAkU48/aI=;
	h=To:Subject:From:Date:From;
	b=DBzBHhEV3RYhETvy4jxuovSpusSP9h29Uf+w+qLU19ILbmXaFQ/JLp/rwRrFE3qRj
	 cMDWeq2L91EWqsMcYL7jEg8y7UpxYvLIIfmf0RVc7saEqOQ/8ghUr12jjwIvPx5c5D
	 Z3NhooSTNZadd6vEwtScqcHMqlzctY779vjrYEYtRNcyFXDJ+LAv7Xs3/LXrRIjh3u
	 wg1dN1OGrRNl/07gxh6pycIEkzxlrZ8j0Z2ST4HAKzOmRnr4zMSZ5NiROaUiFx4PQn
	 feveNAFDCY9DivZSwUoLiT02DfY6Q4hCN6E40jy59Phacg9riWHYmodjbIrLfAf5DN
	 LfXSNHca4CfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82C92ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166331045352.1611.11626884749498223298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2173dbf65732bdb221ab0b895a8a82b34d2e3ee310b9f90f152ee9641cfc3d83
Date: Fri, 16 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663310453
