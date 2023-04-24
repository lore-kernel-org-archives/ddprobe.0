Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4437463C5
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C4BC4339B
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682370785;
	bh=h10PS1ohvRELrQv6cQyiNMFjjaqJZ9JvKneu03CWqMQ=;
	h=To:Subject:From:Date:From;
	b=s4M8UWFO4ijTG3G9FObXzspo2SetQIwNH9C1KDJLvhSDykBpojL+pEhiF1dd2OW4r
	 pQ2THBaoDJqaiFebrGrR+McPbxf03roeC63PPHD0/MMUJj0Q7CSUIzNmCd++Yuj24r
	 dEIH78PoN5a+hRDthk6vENRC6hkNRnZv3lmoh+3K2+iHwNe5pVEA94u9b0EMMQVW2g
	 LiPxuRRW1PK5Hfwukk2j5GUo23LhadW5wsVR2D8fSrq+xvCsaDElE6VuWWklT0Iwdo
	 h+z1GC+USUph8ApyeOG8WAU5F5PQ/2MMOz28yAhnQltxAx8rpVESBe5JGaSHy/y/RA
	 rUTgSsVhPDlXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECD1C7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168237078577.18622.16479040172284831077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6727e2c451c74e460dfd2c3de92470c9aaa560f734e89f6c5affcab3a6ae105
Date: Mon, 24 Apr 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682370785
