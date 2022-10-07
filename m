Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA200A4E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 671BBC433D7
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665135053;
	bh=zYYQzYaAAXYDuOWlLgz3IBFPa0u5Pwc3wYDS4NeRhsI=;
	h=To:Subject:From:Date:From;
	b=mDHdZ7t/Zdxow7mIYDnsQEWCJmxfx3RcAiajJACQyWacaVc+SlXAFhDNlSbzJQgxQ
	 xXJPUnjZVn+xft1ZFZ5NIDI66Zyo1oSzqmTiPBQoOkH2wRzUBs0h27J8nboF5kpwuy
	 8o5PqkNkTCD0h/5G3sZsRaOb2W+pAVK9BN+C9WtqTR4m4EKjYnGdeuB7YNeprc+K8E
	 7tN/JJLKUQ1Ga+i7bte3+qMOx/gPUNMaoJgV3lTZbR1UAWTWF0RdIPiqu6X/BfqFjA
	 c5gtly+8GhJvc0BI4zpZ8smtRdkCBgUchvOD5vbhFVBPYSeQ8rjgeaJGPIIrVG/XnL
	 M75Qz6yKfWZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6A8C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513505331.7551.15091628187918854912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2924d3b06a38e7349b300001d02bc40426f520aac69be52787c10642caacd3dd
Date: Fri, 07 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665135053
