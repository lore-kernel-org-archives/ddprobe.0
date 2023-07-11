Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A98A41
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE235C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689039428;
	bh=MFx3pzmsLiH7SUusj1KceZFMxGU1AFSmBDQySIfkT6M=;
	h=To:Subject:From:Date:From;
	b=djya2vA3Z3uMXpxvOr1n+v29WYW+RBaoAeMywYvAhvfjyYXmtTxr90asJ4F1btavG
	 ogrXlARnowC+ySdcsgLIIOhQxzAXoRUQbT1248IkeFJOWE1T42kNZwIE9A6UMK5I+R
	 wZGLKtSVxeuwfAkfEIRVrYk/vC0U0evzL3/Xip68+MDDKg7q6SS+0hX8gqppvyPTBw
	 SY3DEiqQLF988z/D4KlB7E1olGSWAGoqGdFWIlrYHqHHGBXW/r1VTUlEjQzH27DqQg
	 bfegpiu4TvvmfM0AI/mnIm+w7mzRlV0AGoVXhHA9VLaKJhWwrwyxx95lFmOghbQSEw
	 4Nq9ou7e/kFdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14DCEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903942871.21149.7800545849771157769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf10bc51f348296720a1824185b249fd5f3af09a6fe495602c99f664471f508b
Date: Tue, 11 Jul 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689039428
