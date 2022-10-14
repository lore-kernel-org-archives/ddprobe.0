Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80007B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E44BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665731453;
	bh=9mtyerxADj491837ins0rCK2eGTMaHSQcYWcD3MZk5M=;
	h=To:Subject:From:Date:From;
	b=Ul5+TzzCCWwDtkrcGG0xINapgYdsDM6FRMw7lhstxhaZYDH2zcg33MESMbpbr1/xR
	 13CF1HOr+TiYsz79gvYMdSV6m/nR8JaNfv55yDjNIorLEEJLJ92VcBL0TiJvCf1Lvt
	 uDW26KS18O5mYrhIP5ERonZhYgUNu7dVLpuXSgZ+B9QQpIyunh1y/ax2TMhwB82kbj
	 ola2nkARZtIBGPo+LUsEpVHKeBdSTLI7GZG1pc398Jn4tF2C2C9AY1scdudof9IeW4
	 BxKgKSv12jyl/H3J6q9rA6Cy1Z9BGM00kdy9Nps4PCbRoBiUg+pKae3/p/YW9oWtOw
	 T9zdPVWnxM52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5311AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573145333.30118.13400603643958996650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c02e7f946000475628f3b337174624403938647f6230d2523697316913e673
Date: Fri, 14 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665731453
