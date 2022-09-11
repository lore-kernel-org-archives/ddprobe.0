Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3077F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D82C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662867053;
	bh=Yjf+ua2zAJqJHww2r1Uab2z3rCtvTJDKVi1PHu8117o=;
	h=To:Subject:From:Date:From;
	b=CMQtjYogTl2GRI9+Y1t88gqC4OpyAVwV9zfVRLjAnvLEXhhJ470r81nifVPxdyKka
	 +J/bLGCbXaEFZPxmd2rnUPx++vZ2Pz/V5RhoOnhzVo9Wgnc6OkDhLdmqp6D+0Q3SEu
	 lGYHaCcDYcTExpv7ik/VrWatUkp+dCmF2MpoICKxuR+aEO+FCOcCmFDRojQX5PhXNx
	 jhzaGAfYhLxPAwn429Oq+pB8uCyGXNFB/x1UrhTqwPvAkaAMGc5NaVbIltlAU988Hr
	 T46PvYZEgaP3QrY2DxhPLsCquVGxk+RBryLFrxPdi+4hXNHoWOaPcHijSJRHxNJmGQ
	 rWGbSCTP/gQqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F91ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286705333.17962.6182823505578948930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a880cc65cf274ee5bc8efc2fd0799b0a1dbbd7a124bb3fc33b7966f50dce702
Date: Sun, 11 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662867053
