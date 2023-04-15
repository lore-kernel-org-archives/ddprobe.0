Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359AD33C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 17:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB67EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 17:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681580645;
	bh=jI/ftmIQf+cdHfQDKFhGTmfhe4EEsdg+unOn4UA+dAY=;
	h=To:Subject:From:Date:From;
	b=rVGs7JPf2jfBcByfor0QN3PZyZZvPHqjqKPxqrQLi4rfclbJcLrEcRPyuMvbh+NSw
	 GfqjthJ7mwQAb0G/vbr3AJubKKnDYZoKf8q6TCzxhz4b83G+1cH9w6rb6231AppR67
	 OkgeZD1SSchn8Ej5WSsRWS5zcvjeHrUkY7yQ0U/dq9rdAu5L1wDxsX8EbFQCuHaH7U
	 cDryW9K1c6wm8NW0jyVMp3wIxKTCcmd++90gU50nFyEHRj3op5H3W4LVcNPW7cFlbp
	 04Yorbmx7yewPXMey44+JjYwIvPcBuMQgMprD14JrqzUq1iehkZBgh4L4QeRlWJan2
	 L2+aRP0MIBAWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCBDC77B73
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 17:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168158064576.30953.12132014654692126188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241965b0f8384520abc36b20852f1ecb8f97e7a1e4662a2deea9332f9853fd15
Date: Sat, 15 Apr 2023 17:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681580645
