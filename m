Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F53377
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 01:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63BEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 01:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679017805;
	bh=kQ7QMrC3MxFINvbyc6yVyQJRaOwqvOK8b+esHYi4G7A=;
	h=To:Subject:From:Date:From;
	b=INKyZ2zKPVUTrlzLAG0w9atJnZyCS4V/dDXz5zM4jdj/jPHE3DRSc+2HOldeHW9qB
	 U/vRph2/6ccOfcxmz9ggpW8lbmXE+jfse5N8wbV9LyuNj+9MTXM1p6SRnxZndjlGrb
	 4tw4J92xtpb31jU/ctBoaTj8ZSzVLGehJi7Ior1BYTvLQsQV7yyB+Y8XwRY+uOPleX
	 cHpI5G9nDPc2GaeZAMTESztsWIAn94//n2ZVdq9pi6m7rK9EcqFEs4GNFJju7R5Dqu
	 zncCWwzntwuRDdhqoOWDFdgKf4AdVRtRdYCdHiHC6CqDuBGXjOYK0OXdSiYvFDeIoW
	 YopwLLERD/LOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B961FC74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 01:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167901780574.22099.12426956205135960809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36db21f47150e91796c7733a914952edd18eb271f27ba1a2361b890717d87c6
Date: Fri, 17 Mar 2023 01:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679017805
