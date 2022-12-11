Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DE61C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835C7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670766087;
	bh=JIlcfJzFUWckZ3vCIY2NzHlI76ukz/Gfd5cEginH5Yg=;
	h=To:Subject:From:Date:From;
	b=b75dRqAH6O4QAZ9Sf9He6c6aVtlLDgJ2e87XcKuN6TxlG97xdFD4p71zmlAnqMeSX
	 tS6cS/UTNK6c0aW/tyGFp1BIu5Hobzu16tszXPc1TNzJ309dD0ZiyRLVGJloPtV/Ve
	 pSGrL3kse72RvVz8LHioNEZx1X2va4qbr1k3nHSCUkuIyEi5Yo4qYqd6N/KBZQ5YQg
	 5S077CdPvByOjL+ZmOwd10IGg6c/I95Ng9apG5qBv3UnxVc6g+2i+zIvker2/Bc2Ip
	 XvnYI2PVH3l2T5m+EaFAHrJCEbQqgJ+mLTlpva9qmolgpcSNRTPfQ4F9kGHgn37BWJ
	 dUhZQOl0ieb5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669F3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076608740.17967.3031236282177349068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f09b351860f3d8d7c57ca06b43a82f4cf016e5ca3abc6c7af0a27137df03ab5
Date: Sun, 11 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670766087
