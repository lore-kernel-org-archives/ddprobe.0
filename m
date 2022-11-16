Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19F46118
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69846C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668612054;
	bh=RpsJnl3GACuOsF1TnIZ/ZOgQfvYndkn2LnCIGMKfLlI=;
	h=To:Subject:From:Date:From;
	b=IRDUIvTxRcCY77stAv3+sDSpQVx+pE3gVilh4Xa+5s9b0kPv2sLwnxGhHeS5o8b7x
	 mmKBct9cGhmgUQcofzUxs+ypQf2frotUunqNZLA/gA9+AlfoVrskLWwCA/xpjMKNyt
	 SS0ziD0vti//hHuCvaSDCovlEe5zWgY0qgEjRiN615OeewVWFfX7/V5rNSIWHsCRTJ
	 8yyKB/peR6vDyR1t0DoKLkbNsgx3hk1JMdAnBV4vGouWhLwVF5tl/rzzgL8raS6iO4
	 ThFclqNYglbWTPapTiylkv3dH83VOcDIDOfPdsb+/aH+JCV26EWE0DIcywJ3GwWf2x
	 VOgUP6FtygAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ED0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861205432.9301.3629111326361710647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f842bd66ab7ae0cfce6fb964748025c34707a1c6e8d2d3eeb6fe7dc5604ad6dc
Date: Wed, 16 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668612054
