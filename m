Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60937156CB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D706FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688151788;
	bh=tigZg+ZYAzeg21Fyy+kUKivgEDYmtz+lT1zjsq9mCeE=;
	h=To:Subject:From:Date:From;
	b=PwVa59YIeUlUTOVjfP+MfWpdT2ehS9EX1cJ9Kl01RrB4XABtsie+EgxB25v/xZvgf
	 OXYtRr5I7poBhIpZna/aj+EfMoS/3BhSn1TvmVkXeX+sT9tByAsapKOt/U0fonsjwa
	 m/dhDYmFCLnvLMzi4eK1o2MGRQe5ReoY4v2j+usK6IBJ1tcdUy1KoJLUvZM6Sr27RI
	 NZo6PjL98VukSYff/qLTmzpkYiQLGrvEJvDpPMfpyTTWr6hHOLawiEl0pVI+0L5GBL
	 LK1fzEEX3+j7AiVrG8PAsrDCrqRiTlZH/BjF8NT/KT/vg+YBk/nhHZBUXB/gwYUmaA
	 TfdDSp7eQkSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B7DEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815178875.16640.11436486228228585964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3625204af1e3cbb22835f6d838e0fa50e5635784cf66c65649052e222174c5
Date: Fri, 30 Jun 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688151788
