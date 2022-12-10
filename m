Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ED4813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE35C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670694687;
	bh=BHls3RDqr5Hu1ihqOEuBKLL23fzofJu7PIrCgPJXb/0=;
	h=To:Subject:From:Date:From;
	b=aCyzMOB5ukAcQb84NoOw3a3u1e13tvjuQXOyF0pDwfE/vMW5AXAXJUM5o0ShDNBB2
	 AzSqyzwuHuKd7n736qabhtjkNa/C4Y6QN6Wu1WjpaLm0/vaPCmrXRx/RFoCSmSjiSa
	 cWGl2prQlLXv0lVkEAM5pMULNgrym6PDBsNBDCjnetmD2EzBojBBdGZwZ01gYVaemI
	 KswrSHp64yu0lKki9AF4S+k3p6C7k9qbitx4BVXyA8Na9jIwS2bz4gZILal81huv/1
	 UM+RcBSEL6873S0O3UoZfoj0tc5K34vsq9NjBmTun2sdAwQ+R6Y+iEqMvTqA3nVvXs
	 PAft+Zii3QZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE46C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069468743.21168.6473454790149434468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac38a8cdfbd17b0ada537c3b896f31fb7f86088ba94354518141c97ab130d11d
Date: Sat, 10 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670694687
