Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE39C1FA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708FCC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670415654;
	bh=xQNi1ZZkP4BDlwmFN6oUc30qTdlWC4jI9IJydCnEM2Y=;
	h=To:Subject:From:Date:From;
	b=XNTnK2RbxTzdrgKy6U6tIf2tRazg38rHSCgqL3D6Bz3unmAhbZF5O0e0jrq5lDajv
	 XAgp3h9GP0G5g8PxFE9UETywPwWySA7A0ti7el+Q23xjecIG+wAdJPAqhQodFc+vU7
	 0EyHGKWfOKTsO5aAcQ9m54yr2WeptLaVTTNfTO94I2XlU5pektrOoCOGWDdOFta16a
	 CUzeqbYymcAt64yAuUs4hm2YBlrRFEcWbZcrKtiwmzjpSQNvxLGztiMEGV+2SPc7rj
	 Dlh+iTFh15cnp0yXrFnZN/zDeNvIZ9ODuKtP6MeaiwLBSDUxkvWHkOSo34HqiDbvIw
	 gVsHI9ripR6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F19C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041565433.3931.1379181392674006224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd6a23a36ed4bceed44f152806c79ee4557089a01e137a08dfb2ba5f7881649
Date: Wed, 07 Dec 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670415654
