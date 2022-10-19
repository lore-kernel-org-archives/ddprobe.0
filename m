Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2DE28ED
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C56C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666174853;
	bh=QCV3eLsp0CZ4ZlRsLIGoDfxsG0aZ7BAqhy5kTvDX6ig=;
	h=To:Subject:From:Date:From;
	b=oi8+op4jKOeKsxKQIbmvvQ65mXGrA/j0OH/B6apRPhFeDtp+kwcKrFvQjpiUOK9fB
	 dyehS84EPD+HbAvnfGts3vYwAHjsq7IyxVw2P446tPCELOOIP/J4wfCB+a9K4icB7L
	 kLrQEKN6NWZP0TzBdiww/QMR+2ayeisx6T+c8RCTEKs9cCfj3Cv4kFd7ELnEhVABx0
	 D6I072CRUoxtfFGSeODh2IPHA796UaSOQ8MR45gG6B7VtyuWGNrU90fyaD3Af/MJGb
	 Kw2nqMx/dYWOW+zKugO2WTBVmmdwaNeB4M5OivDy28fxH2tKcqGiacDAUT61oYiiKF
	 p5XNmXPEDy+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58131C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166617485333.27974.12998095768479103925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c07620c812fac60d9ff882e2073c479160fa5532f43083343f72db0fbaf38f6
Date: Wed, 19 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666174853
