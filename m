Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFADF7B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C9AC433D7
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664832653;
	bh=cCV5rgb/KaRV+o8gGZ8/QWnXODhRaLPwvnUq8KXFw6Y=;
	h=To:Subject:From:Date:From;
	b=u5QLlzylDUYI+10Me1cmqc6EC+vAMRwnddnUnnwZoNnir7rTD39wlj3WGoq3k61UW
	 ScwK/mnsHrVWCg6eWlKCpC2GoBrfty1ip+KEbWwymY1CaprhUMsJgJ1c3X6fzjt2Gm
	 GUc1wr8XflvCJdr2LNVf8uii4Yxw3rUVgS3t3mZJQ9L5I/ljsvlYvII1o9C3KHjglB
	 wYNh/4deCu2NoOIzuAS6yt6c1B/c1YRrINTX+RYasyH6noAcPi6Y5FAtHm8nBA/maJ
	 zidGj2t6xfy2TUko3YM4sOJVIVQRTtP1bnAdzT126ACWWAEqUs6014fogc2C0OGGal
	 /Am8LvkIiYWBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51502C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483265332.4971.10573233182226280240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c4ae02fd07c9d34a3f1b4620671d4f8fffd8d0757a98cda5d8295eca5d1f4e
Date: Mon, 03 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664832653
