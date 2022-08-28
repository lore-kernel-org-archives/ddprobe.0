Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C826215A8
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F557C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661698852;
	bh=2FOsLptusSx7XDGMFEBTWcI/z/+o/uOVSE1XikGqVsk=;
	h=To:Subject:From:Date:From;
	b=tshFEmqElINcK+0XTX04orx0XzalwZnb27DRr+AW2ezF4De0tBG628HtXZXRUpzeI
	 MLXDzb0/txsXuOSrIu5msCRGZeQ+iu5ytkfAYQZlzpl3Y6cNhfbfrKzOn72U/aIddJ
	 2bkPLKiLzNjizFwKtXDQlWW8Gm7IrJuGaFmgiw4Du2nLBL7VTbNgyH1SaLjZMrgBR0
	 +lEBHtUAkCjmcbaSPAHqFeO4pHaLkkq+NXQoY1rOLfjeMmberoILSWL2meWE9WorXp
	 0BPJc6LC0Xm5Rg6IfRFluHQW2BJAupPLGf2Wm8QPXYSIiPULk89lyfkD/GTZZ6TDf2
	 Tp9rfngxXLnJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EE4ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169885233.20913.3977917234354019237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f063134d475ecf35560b470eb5b75e817c3c8411ef4755a0ea1d09aae0e490c0
Date: Sun, 28 Aug 2022 15:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661698852
