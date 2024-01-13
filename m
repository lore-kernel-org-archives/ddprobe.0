Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BD115CB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlVQWils"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E853C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705105096;
	bh=1U8d6gvjDrCs99IAmpTiaWhKq0bgD5foD9QI8n9Xozc=;
	h=To:Subject:From:Date:From;
	b=mlVQWilsFUH8oYh5wTrmOiXCq/xLqe8zsQn2ZZzODqFwPRh27uM6TxInCfng2s664
	 IpY7HjPP0ls9FpEailGFH5rH1sxNjnytfz4bp6MW407ztD344XaxEpGSryXRznLhH1
	 q9h79wKWYglFWOKs7PhHdvV0t2u0JTN/AZYEwMRS053iLl3brGo6CMGWvfMSc/tm6v
	 leYNJoOPR7BjGmXPUtzHUhzc97uY4yvNfd+64K5X4uCPP+AzF4tKlTjIOyF6B/asgA
	 ofWBjwhs4x8G4UhNqLTAIHlGL1nC01jPckO5JTOKn1shOnaAEdKP+l27DTu17riDBE
	 CeHtzeymlzrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D433C4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170510509643.26192.10498516111478578102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85eaaabc96853f01ce6f61c9015b7c2b9220d0c4b0ef4f475ad29c177b57428c
Date: Sat, 13 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705105096
