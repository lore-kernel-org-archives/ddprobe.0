Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA30A23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8476C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687829588;
	bh=7MZ1r5LwUFFX+03eGwGU3Ohf0nCiwu+4NmhkQF5hzog=;
	h=To:Subject:From:Date:From;
	b=GTTsTGeCkU37y2tWnq5hq1syNbdbq1w6pbFaehc4IUtQmZrU32rSeum43M0bG36T5
	 tRZcCX7xMrUWt/Qq6XuqEgCZOi0ixMqHsARGM8BOVRIP0jnq62j/kSINr9i88YLBSI
	 ZWqC426ZuO/aGLDPPACjzxuLi8wRdoj+ww1xBAE82HenvccQJV6A+Klsjf4U7/0AFi
	 hSFEj/rovCc/NKUB1W5Dg1s27UOhn00DOHjppJT19dZjU39gsmTBovDLxWDzQALTge
	 P6MQM6r0BinpISSkGmVY22tqB4vC2chr8ElzQutiAb2HLdZtM8ae0nqGjxXY73PAnn
	 ExR0qwfxUSK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEAAEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782958870.27774.6155416057127051666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3394ffd7e359e5f48aa38a6d7dd6d7be07909c200bf9186a0623e8d29a208f
Date: Tue, 27 Jun 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687829588
