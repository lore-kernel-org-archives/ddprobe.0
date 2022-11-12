Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D788080A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779B9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668228054;
	bh=83T2RafBneBwmCnuf0zTx0RqIke0xn+paJGxCqjtv7w=;
	h=To:Subject:From:Date:From;
	b=HihehcMd4jEIVHXSkcmE1N2a4DaG2rE4QOh+YGMhR+R7gxP9LIgoRiFOBI5Bw5PVn
	 HSz8gqUMcyTLA6dwW4DmwXwQeaXChHBNNfd+FpPLGMVAYAzbGO1gECX58gGyBJ0NTF
	 LU1pBgeDQkJFy2PXSejQU9M82l8s66RpjENsnK/ftekzq23q3xmiEb7Rx4VSC1afbI
	 0OHPqRBYkYon0AVp7g0oSoHtdz3tP3FqqDYz+Fn0Tcj4S19BizyrfUJ9HR/RWngDsU
	 h9bZIqMxSg2Qx1JqUoB6KYWxkwmYtMrmluQ7D3WgBpA4uxMc54e459oGDphtLO+HOR
	 lpFUrlezMJY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592F4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822805435.28211.5615834007939675024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41cea6882b5f99ae850d6996530b146c02ef745c704baa0e8b6d08b666f21a7
Date: Sat, 12 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668228054
