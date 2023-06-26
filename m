Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BCABA23
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18E1C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687789388;
	bh=zalF7Tdruk6jgHG6Wo25Tm9ES18dzgjfpdhO6jkqBCc=;
	h=To:Subject:From:Date:From;
	b=qZ8qYsZCePweQEWX6BFQQsbgB7UJ1gaue1nTVp5inTk8O2c7xqpuVhQq6HB+YkXAf
	 Ge+y8K3jsLilKeKZqwRI8nd5V2smNeIcOWHS/r9FMm1hyZcnnGBRfO98sWTdVI5AsG
	 Pg3CoIoV/ObnoArPsNJmPqreufJJ0MnUhB1KI/yGKDvq04yGInON1N5acAOv1vYNZ7
	 0+mSsLxV3WOOBULyd35KSPfsBnpUltBHyoO4WvGVU2g9hIWotcsRO4vqqmF9FrYfJb
	 lKdrVspFLsFyRI98f77cpEt1E6aM8Y0m8Gt3Jf0L5nnocZIn8XmvAsirexgi3++0j8
	 XDWX8RiRZ29Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7078EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778938867.27667.15970875293767306319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2899c23b238db62a3a8ced3b3561572255024de4bf5252b9eb2cc27695ede80c
Date: Mon, 26 Jun 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687789388
