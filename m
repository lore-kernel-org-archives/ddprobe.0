Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5EF14A98
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3F3C433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690560728;
	bh=LKLRDJoXYkMA+Hqdey9IMIGRGIC9G3KWfSiwu4m7uwc=;
	h=To:Subject:From:Date:From;
	b=jcmnq8SKZQklO2gEvc6WcyVHV7tZuBBwc/2AkScCPx1K3reQnc9D5UnKhcA6VaMXs
	 ZzqWeBDK51z71dTqcS/pGRSE56SWD006o/EpYZmoOwu0rzh6xhqW4bh8T4hPdn8TjL
	 4v0aKI+pRki1z42G9OLNq33Q/zyP52HMZaiUsZL8LKOcd3+K1y61bdWmwnOF8iBCZ0
	 yOosX7KhfGLEwFFmNW6NX4zSZ1AxP92R5dPm53Bypx8/gAzFlCdj26Z68uX6SNEnjL
	 BR0XT6XiDCN3KWihVqnpdWaDnuha47CMoSo7mblsXivkErUxkrQGMstPfDuj7Hqq6i
	 HdCMSxIUtXyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE51C001DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056072871.28691.7635782085623089170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f05198e27e10878f00f9c2efffe2dae1625f9648384d82a68ac5a97402c7f3
Date: Fri, 28 Jul 2023 16:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690560728
