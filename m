Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7115F3212
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE0FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688339108;
	bh=lH4sviC25wRjB7Imfh43XBLF7h2Qegi1+vM2LlzggFg=;
	h=To:Subject:From:Date:From;
	b=XUrixZfYyDbGO0gZ81G3gorG1C/LpEfT8+VfeeWzQUAK+cu8dIwA6oCTf2ojeDiid
	 IFVEA5mBIpfqNKfWRW4WzZjXOGqP4CPr7hVemKHgjEW5Cmfh4Zz5OyrDkf/gGI2nMq
	 Cm1ceuQfsB8mJEmx/d6cjxdaSrGpE4wP1aLIfXUe6biqzRg7FAk+Cn8da0khQw8s7f
	 MSKwRrfaCTb4/1p0Wc/L1rJKDtO+LFcTE3zb7KJpySfvssfD9kRu1lvNzoNCuvey1L
	 FY2T0c7bEc37+iAIoYE4PbzLE2ALoXsbMhcRzY1SD8DuvbnMQ+tHuyf4C7y9BMnkTo
	 8+kbjzbL3SLtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F77EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168833910872.7815.8469329561180431041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcb5d6e5bfa18136f4a00066ee0db929115bd833bef30ff23cec47f5d77404b
Date: Sun, 02 Jul 2023 23:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688339108
