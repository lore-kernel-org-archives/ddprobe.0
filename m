Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7979A4D
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A00C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665923453;
	bh=me1cC26rok5bVih45DJRDHDmntXYb9jUCkpxhE1AShQ=;
	h=To:Subject:From:Date:From;
	b=py4h2Ia8sTgp7B45wE1/fn7NRNwMak4pfTkMHPyRmlIf42xgeOVZCLMdgyIvk7Sv5
	 tcohX4skm4cLTRCeyjea+KqeTqvx7IjptQFC5rYsTZBtMcyBcrBo3tpQGWrKcXzUlv
	 O5/A+IUVFwAoDbsybwQ4MKj+Y2hyuR5urIo6eh57JLRaMhfeEjjMrJbKiahoKnp8YG
	 7cfXmtX0O1LkQRgodAHocs/5Sl4nKnSFGIEsMsvLt2fWduZkuFBdeNBiRPbPYn0XYr
	 8waOHiyIYNplOTVgRbQt4Y/44qZ3NWf8dDeuZcNv6C81n44hCPyEXcMNCVQva2hYzZ
	 Uk2Hd1/N8USGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584F9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592345333.2801.15222152081622390501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374a1dc9622ba050049fffaf0bb2594183d29686b0329f07681e4aca2b8585f1
Date: Sun, 16 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665923453
