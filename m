Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53907111BC
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 10:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE12FC433C9
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 10:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695983768;
	bh=cvy3b6UWucy6UT6GVubqASPForkOG68QILwupq7fvgk=;
	h=To:Subject:From:Date:From;
	b=Wdw9TgbpNhcy97jhYrdrOPVvprJojzd6dspWLeRW1ozNywLQA5wEsTujtMA7io2Qj
	 iMmHbzyLpQ1jvwYSZQP7aH+YkdasYHHwpOmwV3woHQS/g684dVsk0npTq6+qq40zKS
	 rfjLMwwp4guQKQKpSlYiWFDELj4LKRAp/z9eKnOcyv1Bv37SznQ3ZhucJrAhwsiiQ8
	 NSym8EIHcgKbfBXudh0mEhtn65qYUlBVPwUd7+3E/g2LguJNGmds/DZA5iPa44m0Wd
	 TXXDwlc6Z6DIVmfi7eFOHSbGJfkiSP4AlqQDBr2hobnN76QTKUCz1W42gUz5n3TOfg
	 4Ru4/gJezmDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AA3E7F153
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 10:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169598376870.9769.13926624612451980727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6efd954c4d312fcbf1200821eb5c0ac9c46b2d3d53bf5d5fc731a9e8a5d53c
Date: Fri, 29 Sep 2023 10:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695983768
