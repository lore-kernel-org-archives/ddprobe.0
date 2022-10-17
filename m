Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C188F10EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76462C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665991853;
	bh=+bgdGDO7OuYztfNbgv85OeP3vVM3Wrp4Z9/mU6QNtdQ=;
	h=To:Subject:From:Date:From;
	b=dSLBWCFqqjzjO69x5WFH3HF/RRgY6qv0e6yk5EmfhdQIvqBF/tTF+v3WSi4Ub8ucX
	 +5T56Sx5SscdoQ6ea7FGRfcO3oLRK7OcUXtRakPIREnV6329qo2DUm6vTn1+rwcne6
	 vW5CzM7YK1YlZAEzAPCLUWCQJY1LJwcAJPN5eFdDK+SdWddRMg2EqW4RNVmcDjBHDO
	 zGLP2PNrmHFmRJ2D5hhdE1FyeBJPT42VPkg6bdVggvGVLy9OLjIQZY1mpG+bMgD9GB
	 UVYU7yz3GHZmkgjH1eOcR8WS/XyBTds0HIxpwAkatv34tYcz4fSlOciH6BHgCH3BtA
	 ly3OyLlBwdz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBAFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599185337.21360.10550402399660917994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85af8645fb4f6fbacdc2869db81adda36837a2911a1c5598dea7ca1263838a39
Date: Mon, 17 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665991853
