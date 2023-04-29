Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7911362
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E799DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 05:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682744705;
	bh=qvDDrHDbTL1oAoC5ax2SA4i52MaSpACc9oR2AUk70k8=;
	h=To:Subject:From:Date:From;
	b=LofGzmcCC0AdI6ubLsLGsrhQCh6xi9D1+9Iuhp+LCLWRMyMcUYNias+gwAhRMxjAw
	 S/pVBC5KES23HVmq6PD7+X2nfCf8UqDnunDlRrhlE+NUQtLeuIHk8lGFgg+8K76sI7
	 +xpOIn6Ko+68UaRl4aJBY44j+9EscWASDc/6xWiZ46fWOMU0+0uhLDmOWVicCMrd4c
	 9BrWKHDcs+WDwl3FRXevqalHdbNiqKeF/Lx7J3E5wa20so7HzTyZR8WyAMESbQSjhC
	 7EYo7JefsJnelnqMFU2Me/8qCTbipn58ecXnt7FVuRHOM4vWRzlmGhSYA75NYWc/PY
	 0GiPFqigStTfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0D8C7618E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168274470579.24855.6580291447339582699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10081851966c00897164995a3d634575bb39c3dfc051323e00096d903c12e420
Date: Sat, 29 Apr 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682744705
