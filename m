Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE2C23AE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 04:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB485C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 04:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690519928;
	bh=JS48yRZTT7vJiBPNymTVT8jf50ApZOWrEDU6XUQso7g=;
	h=To:Subject:From:Date:From;
	b=lywzwkL0l7cGgyz3GggPyhJvodDPC8aygy6H0w3V/UzvSs1eWqIo2wnBNzrs69rMd
	 MHsSeWC4z5Cm752vnuLK6RLy1YuT/Z0c0o1zrvhhQEL5KprFRY4UlEyshMgz35htEJ
	 jBgvxnSQCj1n2hhagntTGWCT8kL2r0q/EAGzu0GWa28GfLhAjShkxhpGM5F7AJxdBa
	 pDkZTUkr+oIpIvj5n4009Myv36R7zsNRfPgkrMwcFVSc3Xn2OGtLen4DyGgpTaiy7U
	 WryIBoVBclZj4oKcTCilF2rd7xIbsxoHyKCywCfijeqwryAtpYaqPeytwunR6zcafR
	 HdsLYHoT+Usww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41AEC001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 04:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169051992866.30379.9865623808599247358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98448e9d1c3f0524f9b33010114b7aa0221d9ffbd6eee1dcec7065b16c01423
Date: Fri, 28 Jul 2023 04:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690519928
