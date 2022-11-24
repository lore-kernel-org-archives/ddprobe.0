Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A9C2575
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D68C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669292454;
	bh=QUPv+LG0s9bH5fE/hY2pLiv+SFkP+qiEzedlPfjkBjw=;
	h=To:Subject:From:Date:From;
	b=pLx0avN47+TkcViE9PgFQD7wAi5OLVOHbzW9g8O46kxuWvlvvUSxfuASxyedLHukj
	 IIUHSulRm/JfTaWH1f6Rvzap/pS5pSZs+4/BR7ViC1lVaj7j+BnbrOYV33EOZs6nUh
	 DwQwl7Ty4gnuZ8EZL2hXoeHT2s46IcesWdCC63LFbP9mRymu6zONYsumkfQcqTmF6e
	 653l+2rmvkh+NURmAmOPMGnVBx534COSq91hRuRQPaC2G9TOwTyWWh6mp4IQkyJEiX
	 SOy/ipP4WioexH6e59/jZNQYB8IDfdMIf2cSBSaTxhpoLa+1jXPWTzrnt5lEF6fshb
	 +ujVwmouUDDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4F0C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929245436.25293.7689256223948396317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd094e92c39a8033a6a5b442dd5480a0b61794f4a9f96fe71b06b0c70d4a757a
Date: Thu, 24 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669292454
