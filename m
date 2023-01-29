Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA341361
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E95C433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674988385;
	bh=5cp3Ct1Nmc0qUtihmSAmwcF8o4C6KV8MbUaUfxdjDMw=;
	h=To:Subject:From:Date:From;
	b=XbaB1wOmWR+1giRNLbYH914KPDZKIpl+P+wmUeYPXKuMJRlCK2uujcaoiQQoGJKdo
	 xBWiFWLekCFd16+9IgjzTh5XiAfA+LmnVuFRI8X0tcHEHiLa+h318ATwGIrPcO04Jv
	 vRiAehO5MLPQLJV1+jI2imMtnyQNZo48rrYZZ+lWgfyXlJCcjWE5hlMoVJpZvvFFf4
	 XHDm7bRQH9Xq8X2o0JU3pS5oDn8c2hfOK0Ik53qYNHLsN23VGi/OGK0WG7D53iYsCg
	 AT0UWySShhhfq13qkbz0OluRdBlSB7e/QHc76A8JU4T/TVntQ86UN/rRSO18p14Bqp
	 YlzBO8NgA+Ukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A06C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167498838579.22814.13595192524550617108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854d4aa62e5870d98f33853d01f97f811941b82672b80f3d7e5633bee90e21d3
Date: Sun, 29 Jan 2023 10:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674988385
