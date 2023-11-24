Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1314A156E4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDku/V7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8D6C433C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700819296;
	bh=tX9mQ1Kp+qR1G8OGVpyPcgSMFAv50Z8qbkxILHzkd6I=;
	h=To:Subject:From:Date:From;
	b=UDku/V7HttKjBKCxwHlC7C/3+MZIWBgAvr2CU0iBF8NOWqTMUT6W1fAixwobuT8y+
	 xxr8+pl2ad0xGpXnl7mhWAIEdh7Iidtp3kK1u6joH57n3AZgBZ/dxt2dSL7BI7W5VA
	 wzn/ADnBlo2E/APO+qM94JxMAluKMf7uV7ypZgH0ijAEYY+LSleK1FFNGeYd8YYfkm
	 ja6HUSRLCbPjeXHQhujGlAexf3tyhs+4yp3UaVTpat9i7eeGCsG55innwHl8eSYSIl
	 e+glFpr5J5SC9BBLyy1KGxhPyRr3rMdW65t2Q3gwCecWpySumSdWiMwA8cFPLDf96I
	 Fyn/i/Y8ONppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64744C61DF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170081929640.23506.11582563540071489570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf9168163715cd3e8a8d2e763c4254765162218492b713d7bd28fcfc4ce3be8
Date: Fri, 24 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700819296
