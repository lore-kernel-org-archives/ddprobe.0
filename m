Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE410181
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA05C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669639254;
	bh=m5XT56Ui0ognWuka2AkMnAZNSfKtj4z54KzwVBdrY9E=;
	h=To:Subject:From:Date:From;
	b=hW65C1OrnGDx2SP1j+j8sKQkN84nSmKKmXL1USkF/kjqqVDv2ufVo2dt2LYZID/5z
	 mFHuWSPyvkhPLg//fmGFGCmdpLCljwuJcN/IxDL1sXuCvNP9jbx4FD6KbY1qfPJti9
	 PbBroCEoYli5ZE84VYkfMIf5WPUYrOjcQOvZKtI84wU/qjtWkQl6edog1LlgATOxvB
	 ltz8nM1nAflksh7FLzK9Z3josZjLpcVTRew3sIFmyoHOqCMUJt19X1sG3iTcsGS7Qx
	 rA8SugRfiv9pkLd/y/Er4Ojq8e1cx0Otz9WoC+DkQTYrOhsp0gknNkk3AS1Tv6pDRw
	 NMmQyhdwa52KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1F1C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963925437.5286.6130615050231316968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85c9ef378dccd9f71ea332bc0f5d1754a54a9b2c7a9f3a6b741802fa83799b7
Date: Mon, 28 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669639254
