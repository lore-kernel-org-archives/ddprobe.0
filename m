Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286CA63CA
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2Fahr8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88ECEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699775296;
	bh=e173h9IKgwzIkmXlU0gUlrcrylhtNVnl2IbPDOJZRo0=;
	h=To:Subject:From:Date:From;
	b=f2Fahr8feQ5wcxz5N94l/bPxdlxlmuiGOy/kFIyFEyZvkStzRppF2FVIzcGVLJK47
	 yPRPQcr2JKSd5VAWNI0OIH1yB8vvwjEezpz8nntMSivSI9EWN+duRF9lxyXAi8jhtr
	 zfbhjTDWrg48CpDUFpNrnrTo97rLpBtZRmB6s750egF1ySe5x4lX/Agmu2yKrPSNu5
	 hTACPUMPnCyIh6rP04AdSmmiQzmTYWCg77Hi2vVyULaA/gWYXVI4fcYl9/fRvf2vSV
	 Uz7vgApZ0UDk7DBu5nRC/6TAoy8aSyxYKP28rRttp6esBTk+BZ9xlB9D6+giT5OF3E
	 ATrr1ARGOCo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA1BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169977529641.31327.2202222748575614095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0ecbf3478032ae8a935de90021eb760fe6648b0883fbd1505c06a5d9f3e9e5
Date: Sun, 12 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699775296
