Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5A72F21
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 21:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE37AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 21:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681249925;
	bh=/ddUv7EanPQqSP5QEJAZOlWluVBwZjbAMpp8AGXfDFU=;
	h=To:Subject:From:Date:From;
	b=q7XhMkv6juQCcRogrDQM1YkizJKSzJbVxi5yb1DJhVsA3e/sZOo7znp91jVl76MUE
	 0PHr9F9+dWqiyWwpb6ewFJVoDefWo9mmmSidCLtgvPcAngDE1/LylaAKAapzx29qIy
	 e+SLc/lILh++H/wuB9iayXaFdKEZxa8XvD8G/XJH0x1noE9v1Y3rMEj4srQF1jUxs0
	 JpJqlBBNZTfnePlfviVBA+PHIrFsxp8ke84xFNQsS18rEEIunBaR7lhIeMI/h5QV0l
	 gSChdh8ZzqMw3LvX6u8h4cagpBi+fA1NV8haMiwNScNuZmXJ9j71OOSRt9Z2JbSIyJ
	 RjaE2MqnA5rcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBD3C7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 21:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168124992576.15937.189602792615141671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307194efc59bfcaf6de06ec582b954747e0fac7cf6a444ceef3800f2f485a92c
Date: Tue, 11 Apr 2023 21:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681249925
