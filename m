Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEF915ADD
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF39DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689676268;
	bh=2CTGSKzQWXlRIaJXPMEvPi8kLSM0Jr880EfB4tJgm+k=;
	h=To:Subject:From:Date:From;
	b=T9gmjnbqxHSS1qIvTVhYMN1dubU6DN/0OnOy8KpQxkMcAu6XiHqXcmxxY/eo9GyNG
	 2u25AsS+hKVabGzNIXEMIDMUNNEj1cSUV41LvRCUQmQ/cBXxx8Zfq8FFqmvHLnkqj7
	 ffjJvjSlAt1AGVYmDNZH/hOTCn6lsOnq+aDJrcFaoPA+SRj8Pek+wIoYqXSm1lVXnM
	 E7UL8TkJBbc/ZIRloNkKv+qFqVissmG/zyZuTM3kkSsG5F0Fmqe7S5Ei8YKZ+uhpFN
	 MiV4zrk8lEVQpsUqZdL++gaC1SKNIZrjG7hOpysz1hmE80q2OskFVCmTsIPAwcU5IJ
	 nOIVU2f4x8c0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C48EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168967626867.8715.13697738771791058943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fbba033cf7858bb4edb553e7a73e5198fe30b6715c6959773c904db19f42bf
Date: Tue, 18 Jul 2023 10:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689676268
