Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FD27B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D60C43470
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666408853;
	bh=hO4GbMR/XFsUkWjx/X9Sh6ZOXCO+mdAUJ6ZeBK4ypXc=;
	h=To:Subject:From:Date:From;
	b=YSo3MU5q1tFW4LwMh2Uqsw1I664MznwYyzz8+Yt8N1rCs+TCkGPQxIZNfzcr1WDUp
	 ncvilZYGERnmb02P/SeIWhyfNR/tmvlbMsZlyP99Jk6nnUJ3pZ10Hs8GNVfqa8ZY8j
	 R3CGgIn0xBLTl4GoCDlZMcOc5RFwIZuacC/iZGakC3oG74e/X3jB/kMRyQQhWD39aa
	 iEhHMUp+mJELFmTrhhceZZMVFu6OEs9nSm3fjXOQl5ZW3k+vAo6gOnLkV4A5FlMv5v
	 ORT74Lh3qY9eodo7lfjGnPtNSn9Q/ueTFcyjqkdutbHN9iSnmjz2gPxT1umcxa8XxZ
	 3W87EZWfpAtbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64473C38A2D
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166640885340.22145.12376296260797432215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13715d11c531063b1f4326890beee2ff199dae59864dfe175cc471c301f67ace
Date: Sat, 22 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666408853
