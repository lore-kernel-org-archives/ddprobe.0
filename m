Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E5A7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5E3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666236653;
	bh=ye2f8/0jwOatqCciPO0EAvY00xk9MixzaQ0Qt2U6dcg=;
	h=To:Subject:From:Date:From;
	b=fl6PTtpQZ3/UmQ4o9HPMZ8gZWQHVDtiO3KPNyT65Vyr3GeQtSmyCXcvqFLgC3ZGtk
	 xrjGkivaO8oXm3add3wVVSg+cKXUUEhphRHPx+15XTsfhvWp6xWqJHX3orlUcN2z6g
	 Zng4ZMmqGGPUkJsGJYnt7KtM7Ly1lsE7pLZYH/HgeVdfpKPAwqIwL/1Xq7+PtjQlMo
	 ghKyLkv8cH4EprYWluVw25n+7isZJRqZn1snWTLtS8geRMcJNG1TWmJpjaIJF1m7dG
	 UwEHCVO4i+Cx+qldtoTRtmAmrMPtG4t5/BM20A/EjP/JQm1yKg9GGO8ChyoUk4N//F
	 c08hoXmXI1jJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5151AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623665332.17570.13622711589235529320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935778ab7976f523e7521dd3ee6e9fd9230f54b244b80af761474ec439ef20d7
Date: Thu, 20 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666236653
