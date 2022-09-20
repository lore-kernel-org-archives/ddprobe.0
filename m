Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8805A20
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F91C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663655453;
	bh=ldkz6mNNhBbr7MT4aDwqoM6s5un7dshn93YS/9AgYww=;
	h=To:Subject:From:Date:From;
	b=fltjncrbAm5QVPfTj/M2MT5PVbLXRtw2awM3HWS3n8ZD1WkMGqnGn9aRcNBMHOq3d
	 JHYV1TxJ9+yWg9bIFrFKO95JmxLfnMNiGqfQbVinXW2AoPVynaQ6B8i7rmBSLbYfLN
	 7HvJk1nxdvdcEL10A4nLUOQbM5DlVfy6w+yUgcDghDwG2mfZrzW0hwKvW6KoGbfoPj
	 NYUZNO4KabUWecRWdak5gAtWA58lJdmRBIJ4m9BHfu6MqCNUgiRcP0oP7Hrlq9BET8
	 YRSAm7f4oJsqCak7s2BlSOnpN1txMhPJCktb3TLSxnbFT58wuqfQJ1CLW6k3WfyOVw
	 GAa7ntRHIL2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51652C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365545332.16694.14966451225758750324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301cc72ad44939e835f4d4d50d705471106c661411a7b42971b19a39b0d158a4
Date: Tue, 20 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663655453
