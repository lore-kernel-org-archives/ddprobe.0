Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589C3748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EB6C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674320525;
	bh=iiB9T3WTUT65DDkx/xwdXIMLAGxlu8imOgeqRDPQ6mM=;
	h=To:Subject:From:Date:From;
	b=vFUb3BXbALQFjBDM1Iy8F5r+XBB381PQ4cMAVI1pcHJUiWWGnu2qEf3FYD5ZjNrhs
	 pSGEzu7OGg3q1cfIrb2/piwo87jh2KqSWNplupIVPNHE0Jn8i/W3CSubDgQ4qN2eyT
	 TFiMc40p2YGf1Lr5afcVREsDJd/PohDHG0Hmq34Zv+RHYqLpfkZjZR3o9uokEnAQal
	 EXR6DD9CFrLWoV5Lm9/J+WOl9dxIgjUU+z01Oaeqncu4dohAu02p+jIjKqVKTYHrdu
	 sJ4zxGBHt5EA0hpk++gYim5pWRXJ5DxkDRarF90xSXFJryY522xoVrSC8c9nQMt52p
	 oEuRDQ3aeo7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA146C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432052573.1076.1953430128064464460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd964397690372080881dac94ce62158038534c7812d2298f2e6b16548d9cec
Date: Sat, 21 Jan 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674320525
