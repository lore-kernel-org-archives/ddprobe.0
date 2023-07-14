Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4665A200D4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C009BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689358268;
	bh=Fl++FPQESm9gq17bq+Uycz82saqsxg1Ozh+3fxmWbNU=;
	h=To:Subject:From:Date:From;
	b=s4ennw7ewEJcRxc15OV/GH5ZQ7vmzCeK8UbkzYxwXY7/L2Jje0StrJLAMptYzKfSS
	 cHdJA2ybq18BgYOm3Rcse9y8bG1uxt6oZYoFbwuMlrsFRLMiTC2XeSYx7mYc0nlT9b
	 jI2XVHOjdMOSRMbjaRXSIhtFGO/qKTm1p/qmRLo56ztLlwDw/Eb+Bvhj9+Z2s2qRq2
	 SbsbRRfPxZndoY5tg4ldno/pLy34MPBQnxRS4pSB/NRNmMNFLJQ447g4Mb7fj4/P2o
	 axQ4WXa8Myq0pdRyYMCioHvBQ27H0HHHY/pPUTdFeI8aRKuH+06W+qg9Y3bMqP+v49
	 Jx4L4bUZzpubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73D4EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168935826867.5138.8461863859072745845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf01b611c4a7647085a98d321dd7c016d256623f44e01932fbb40c432f426bf
Date: Fri, 14 Jul 2023 18:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689358268
