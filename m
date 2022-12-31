Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BD23209
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C278C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672509087;
	bh=e+lDGV6vmj8IHAVL6FQvXNk/KmNaG/v8LpIVRGfOHfM=;
	h=To:Subject:From:Date:From;
	b=Ow7xdGlk8Usb6gCsUNqKHnPbqOnh30gi/ua7wlbwwRMvg3n4Uu9cOfIG/ApM/7Gxw
	 cCcb85RRgxKbCZDOG/dFcQIO5E/ReRRdAk5wCHBmSyxupnYWfl65J2S3BHMVFVODTi
	 68acZd+E2XeD71ZmeN6RfkL2kuiRc0Lmf6u4Zdfq1Konvw7MC085TKCrgMCfrgF69A
	 Ui13QO4jFNF/FEO9bD7rRGpVFjVORgU5LVFuUng571iETNJNhVuMJqaFLnNK6+EZvX
	 8e2Nc/uJ1gTwB+ATujwBv0RZSfkoECiJsp19TwT6ir0GltQ39i1XJl9v0UCHZje2VA
	 GGXealcUSfkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EF3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250908739.2945.11446862191709586651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932c76345a4e71f67740c03957f4a6d8d6387d79936e569eaa61c2f33f8b19b5
Date: Sat, 31 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672509087
