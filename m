Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3430E3C27
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 19:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD226C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 19:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679773325;
	bh=jlq/lDuwcETX938XgGus4f0YUymAloHCN1tJtszuYfQ=;
	h=To:Subject:From:Date:From;
	b=BxKlDdF3RPiis3LkP/YOPqyyr/HTa/xAv/blxif3+OU1g3ax3KrC/XMZN5JORPsek
	 xXadQOoQoKp0mzV7zQyZwMiReohcsxxYPOYpVcUrsS1D6umH8ktVODk+hnxYISIAl0
	 aGrX9vP+Al6dyzRI+CH14+/nwUEnwpxw8NyvsF7Vv86Dq8xjn+Gpt42T2LwLpmjuDZ
	 gjAGj3X0Yzsal8IccY1XdHUPZ9KGSDn+2WnHpUzeUIIpF8nCPM0EEGFsb8WrDOQmcs
	 a9JQ3ILhooXbtwnilKCvqm2l+kLYys6zAU530MaqlLr/m2cF2l2A9mCw8q9ndoLpLH
	 T4/VC4L3FRpUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF67C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 19:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167977332577.10479.13325373545943559775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e65bf0539f3ed8bc8fc13244a372f38908c063fe14e61ad7e8e0ce8ceceaff
Date: Sat, 25 Mar 2023 19:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679773325
