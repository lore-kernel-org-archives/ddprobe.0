Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AA92109
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898CEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671924087;
	bh=kFY4yxXYuMqGIis6dQwTPy+AchBhlVBQ7vbs5HTfnqo=;
	h=To:Subject:From:Date:From;
	b=QHUpz8fxC1NBJ5oGEPd57e2k3e6E+f3oY02X7Z9VMKuo/MfuodswTsJ7LGERC1Hxk
	 xA47hnuYiNNzfgxUMgkeI4kq0aaQ9f1SztApGqGjiDRcvgcTjLJBGQb5xe0uABCGoA
	 6r+oIpqvCnFUg5D6YmXDzgYpzoctm054iOjRRVTm1lAna78zDK5Bi6hPJg9mK6V3h/
	 TocJTC8pifWPglKghlUtNyL9lV69hPQQ4fyJJ9RlBBIIRAFZHdCR/DVzku2QkaKYaI
	 3eJD5nJaH8Vd924OK5uYP2h+k954SmKgzp4E2DDAA7szctOg5Q0oJwEayBNpAZzGtt
	 BSW0ie9c+2oaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF11C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192408741.14569.7310499373216562968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1171be80893b4b79bba23142b9d2effaf66da36ee7ae08bac6b833db99ff1814
Date: Sat, 24 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671924087
