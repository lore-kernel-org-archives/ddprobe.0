Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30549627
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 03:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AB0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 03:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675998785;
	bh=u2ssNS0Ax0I7bQGRvBCutV6tRiKY3FYFLY6dfHDboy0=;
	h=To:Subject:From:Date:From;
	b=lIHnsB44yeQa5PwUzM4UEo/GrQGj4LfuRpXq+2ypxxG6BQHZrpmkOi2tuqfMvBedw
	 jnc4/mYONbhLcy5W+N7WKKSNFnEyQdqO26eyhUdwvcQdMrDB7++ddQCZIYhbLsnElt
	 R9r9RcAVVqtD/MXtfo9F+BGaqlK3eiCuomXSEYzHXlVmj1rzdoVprWqtvWaCX7qDIb
	 jF6XpdBZ5uscLBrHICriuSyBoCyRxI7+b9D56nFjWXz7aHJsQtXgofKfORHLI2cf9v
	 vJCWGAD6OzCBTv6SeomndMvWjsso26/KTgXuxnhQw+B4BSnrEKcaWhv43NrThpIuPh
	 Iog/MVEAxx4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB3BC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 03:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167599878573.31061.5470750892277961919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733caf6b5289d8fde0b31bb5524ee1cd8f18db893299ccc544f569ef03c1f959
Date: Fri, 10 Feb 2023 03:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675998785
