Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D20389
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 14:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qq20Hr+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 850F1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698590297;
	bh=1hwbNyb4sPPaaYO/q6LD23jHaAj3YnhMhnNYPi1npFY=;
	h=To:Subject:From:Date:From;
	b=qq20Hr+t+yzw8jgxnkBALFTM2f4FVmY+MO7WmDJ0ZwdiBzKpToPyhfiyRv06YbdNY
	 0biio9kJDl9qOk20IehIoltojbzboC6++6WqgNoin/6XGHxbXqQPMmq3zZ1yoFxgfl
	 RBu2NWtr17ZLsIXvn2Ky6PSVPECRYCYD35wkVJdRBy5NcZqeGAjdRE9AvBGpzv0kGU
	 5jl8df5fGUiuxMfkEtAvxcnvKPgesAxQTaTMtvNqkki/eGkp6yvaVHbxTwZcq5VBcf
	 hWd6XeCwmj8bgP+vGqCBumFNFb8KJGnMF2RtxPg4HICjnUxuD1h4ne7gqC018uHP7O
	 Axc+tixeeTclg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678D8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169859029641.23075.18423043234966581316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5932c2019f2a2a438b125104958c3b6b89f53d5294ba7645e0456dff05b51d
Date: Sun, 29 Oct 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698590296
