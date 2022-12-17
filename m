Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC21262B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832C0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671249087;
	bh=1ggwfHfZu7SzY/8apxEX7lKRnU6prIZLhmus9if0kZs=;
	h=To:Subject:From:Date:From;
	b=QfiJsxA64Jj6JtofVc04m6di/fmCYxJQvg3n+qURMqA6NPagLoxWpjh+z0GpFgxDX
	 vNjAX3gbDri36LbAhw2MWO3qqoJ2rBtN14mLlRvUV2maDYGB7TRIKhGkwn0c0puhch
	 X3vyCSMwOHnMPUOZX9PF+YexCd0s5pcHX9fP/gpNSohzfdh9LeBNOF4alW2y0XsHwj
	 ftJw5yxOA+uiiK9nZBZ/PBpj+NXMuNrO2YvCZ3Qnm4JHlLcOSIuiNLOOeRR2gxLRSw
	 9pMIFg3fFi18mcTHP7jy27kmhNJBpPs8B4mQOPD3ZjXCbFC59C6KOR5CNmTkbJw7mw
	 e2I8c1u/dlcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E27C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124908741.9737.11825247761319819268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b767f9ed05f751b52651e0ea6aba414ac622e48df1f74fd6946dcc2747013715
Date: Sat, 17 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671249087
